#!/usr/bin/env bash

set -e

update_channel() {
  local CHANNEL=$1
  local TARGET_FILE=$2

  echo "Updating $CHANNEL..."

  # Fetch the latest release data for the channel
  # We filter by name containing the channel (Nightly/Beta) and having an amd64 .deb asset
  RELEASE_DATA=$(curl -s "https://api.github.com/repos/brave/brave-browser/releases?per_page=100" | jq -r --arg channel "$CHANNEL" \
    'map(select(.name? and (.name | contains($channel)) and .assets? and (.assets | any(.name | endswith("_amd64.deb"))))) 
    | sort_by(.published_at) 
    | reverse 
    | .[0]
  ')

  if [ -z "$RELEASE_DATA" ] || [ "$RELEASE_DATA" == "null" ]; then
    echo "Error: Could not find latest release for $CHANNEL"
    return 1
  fi

  TAG_NAME=$(echo "$RELEASE_DATA" | jq -r '.tag_name')
  VERSION=${TAG_NAME#v}

  echo "Latest $CHANNEL version: $VERSION"

  # Find the amd64 .deb asset URL
  ASSET_URL=$(echo "$RELEASE_DATA" | jq -r '.assets[] | select(.name | endswith("_amd64.deb")) | .browser_download_url' | head -n 1)

  if [ -z "$ASSET_URL" ]; then
    echo "Error: Could not find amd64 .deb asset for version $VERSION"
    return 1
  fi

  echo "Asset URL: $ASSET_URL"

  # Prefetch the hash
  echo "Prefetching SRI hash..."
  HASH=$(nix-prefetch-url "$ASSET_URL")

  echo "Hash: $HASH"

  # Update the nix file
  sed -i "s/version = \".*\";/version = \"$VERSION\";/" "$TARGET_FILE"
  sed -i "s/hash = \".*\";/hash = \"$HASH\";/" "$TARGET_FILE"
  sed -i "s|url = \".*\";|url = \"$ASSET_URL\";|" "$TARGET_FILE"

  echo "Updated $TARGET_FILE with version $VERSION and hash $HASH"
  echo "--------------------------------------------------"
}

update_apt_channel() {
  local APT_HOST=$1
  local PKG_NAME=$2
  local TARGET_FILE=$3

  echo "Updating $PKG_NAME from $APT_HOST..."

  # Brave Origin isn't published to GitHub releases, so we read the apt
  # repo's Packages index directly and pick the highest version.
  local PACKAGES_URL="https://${APT_HOST}/dists/stable/main/binary-amd64/Packages"
  local ENTRY
  ENTRY=$(curl -s "$PACKAGES_URL" | awk -v pkg="$PKG_NAME" '
    BEGIN { RS = ""; FS = "\n" }
    {
      for (i = 1; i <= NF; i++) {
        if ($i == "Package: " pkg) { print; next }
      }
    }
  ' | awk '
    /^Version:/ { ver = $2; block = $0 "\n"; next }
    /^$/ { if (ver) { print ver "\t" block; ver = ""; block = "" }; next }
    { block = block $0 "\n" }
    END { if (ver) print ver "\t" block }
  ' | sort -V -k1,1 | tail -n 1 | cut -f2-)

  if [ -z "$ENTRY" ]; then
    echo "Error: Could not find $PKG_NAME in $PACKAGES_URL"
    return 1
  fi

  local VERSION FILENAME ASSET_URL HASH
  VERSION=$(echo "$ENTRY" | awk '/^Version:/ { print $2; exit }')
  FILENAME=$(echo "$ENTRY" | awk '/^Filename:/ { print $2; exit }')
  ASSET_URL="https://${APT_HOST}/${FILENAME}"

  echo "Latest $PKG_NAME version: $VERSION"
  echo "Asset URL: $ASSET_URL"

  echo "Prefetching SRI hash..."
  HASH=$(nix-prefetch-url "$ASSET_URL")
  echo "Hash: $HASH"

  sed -i "s|version = \".*\";|version = \"$VERSION\";|" "$TARGET_FILE"
  sed -i "s|hash = \".*\";|hash = \"$HASH\";|" "$TARGET_FILE"
  sed -i "s|url = \".*\";|url = \"$ASSET_URL\";|" "$TARGET_FILE"

  echo "Updated $TARGET_FILE with version $VERSION and hash $HASH"
  echo "--------------------------------------------------"
}

update_channel "Nightly" "pkgs/brave-nightly.nix"
update_channel "Beta" "pkgs/brave-beta.nix"
update_apt_channel "brave-browser-apt-nightly.s3.brave.com" "brave-origin-nightly" "pkgs/brave-origin-nightly.nix"