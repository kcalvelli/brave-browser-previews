{ stdenv, lib, fetchurl, dpkg, makeWrapper, autoPatchelfHook, alsa-lib, at-spi2-atk, at-spi2-core, atk, cairo, cups, dbus, expat, fontconfig, freetype, gdk-pixbuf, glib, gtk3, libdrm, libX11, libXcomposite, libXcursor, libXdamage, libXext, libXfixes, libXi, libXrandr, libXrender, libXScrnSaver, libxshmfence, libXtst, mesa, nspr, nss, pango, udev, xdg-utils, libxcb, libglvnd }:

stdenv.mkDerivation rec {
  pname = "brave-beta";
  version = "1.86.118"; # Updated by update.sh

  src = fetchurl {
    url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
    sha256 = "0086nnkazy9ayhmbj76pvwb8bxflmzrgafndc9f743zb1iydka7q"; # Updated by update.sh
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
    mkdir -p $out/bin
    cp -r opt/brave.com/brave-beta/* $out/

    # Link the binary to the output bin directory
    ln -s $out/brave-browser-beta $out/bin/brave-beta

    # Wrap the binary
    wrapProgram $out/bin/brave-beta \
      --prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath buildInputs}
  '';

  meta = with lib; {
    description = "Brave Browser Beta";
    homepage = "https://brave.com/download-beta/";
    license = licenses.mpl20;
    platforms = [ "x86_64-linux" ];
  };
}
