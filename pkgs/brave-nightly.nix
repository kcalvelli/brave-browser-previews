{ stdenv, lib, fetchurl, dpkg, makeWrapper, autoPatchelfHook, alsa-lib, at-spi2-atk, at-spi2-core, atk, cairo, cups, dbus, expat, fontconfig, freetype, gdk-pixbuf, glib, gtk3, libdrm, libX11, libXcomposite, libXcursor, libXdamage, libXext, libXfixes, libXi, libXrandr, libXrender, libXScrnSaver, libxshmfence, libXtst, mesa, nspr, nss, pango, udev, xdg-utils, libxcb, libglvnd, wayland, pipewire, libxkbcommon }:

stdenv.mkDerivation rec {
  pname = "brave-nightly";
  version = "1.87.93"; # Updated by update.sh

  src = fetchurl {
    url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
    sha256 = "1c11nz4rlr5nazbjcp1w8jdysma1ka4l50jgxpfqs7wbgkvghw24"; # Updated by update.sh
  };

  nativeBuildInputs = [ dpkg makeWrapper autoPatchelfHook ];

  buildInputs = [
    alsa-lib
    at-spi2-atk
    at-spi2-core
    atk
    cairo
    cups
    dbus
    expat
    fontconfig
    freetype
    gdk-pixbuf
    glib
    gtk3
    libdrm
    libX11
    libXcomposite
    libXcursor
    libXdamage
    libXext
    libXfixes
    libXi
    libXrandr
    libXrender
    libXScrnSaver
    libxshmfence
    libXtst
    mesa
    nspr
    nss
    pango
    udev
    libxcb
    libglvnd
    wayland
    pipewire
    libxkbcommon
  ];

  autoPatchelfIgnoreMissingDeps = [
    "libQt6Core.so.6"
    "libQt6Gui.so.6"
    "libQt6Widgets.so.6"
    "libQt5Core.so.5"
    "libQt5Gui.so.5"
    "libQt5Widgets.so.5"
  ];

  unpackPhase = ''
    ar x $src
    tar -xvf data.tar.*
  '';

  installPhase = ''
    mkdir -p $out/opt
    cp -r opt/brave.com $out/opt/

    mkdir -p $out/share
    cp -r usr/share/* $out/share/

    mkdir -p $out/bin
    makeWrapper $out/opt/brave.com/brave-nightly/brave-browser-nightly $out/bin/brave-nightly \
      --add-flags "--enable-features=BraveAIChatAgentProfile" \
      --add-flags "--ozone-platform-hint=auto" \
      --prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath buildInputs} \
      --prefix XDG_DATA_DIRS : "$out/share"

    # Patch the desktop file
    if [ -f "$out/share/applications/brave-browser-nightly.desktop" ]; then
      substituteInPlace "$out/share/applications/brave-browser-nightly.desktop" \
        --replace "/usr/bin/brave-browser-nightly" "brave-nightly"
    fi
  '';

  meta = with lib; {
    description = "Brave Browser Nightly";
    homepage = "https://brave.com/download-nightly/";
    license = licenses.mpl20;
    platforms = [ "x86_64-linux" ];
  };
}
