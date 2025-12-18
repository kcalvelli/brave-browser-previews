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
  # We look for `version = "..."` and `hash = "..."`
  sed -i "s/version = \".*\";/version = \"$VERSION\";/" "$TARGET_FILE"
  sed -i "s/hash = \".*\";/hash = \"$HASH\";/" "$TARGET_FILE"

  echo "Updated $TARGET_FILE with version $VERSION and hash $HASH"
  echo "--------------------------------------------------"
}

update_channel "Nightly" "pkgs/brave-nightly.nix"
update_channel "Beta" "pkgs/brave-beta.nix"