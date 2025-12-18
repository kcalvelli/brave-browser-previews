{ stdenv, lib, fetchurl, dpkg, makeWrapper, autoPatchelfHook, alsa-lib, at-spi2-atk, at-spi2-core, atk, cairo, cups, dbus, expat, fontconfig, freetype, gdk-pixbuf, glib, gtk3, libdrm, libX11, libXcomposite, libXcursor, libXdamage, libXext, libXfixes, libXi, libXrandr, libXrender, libXScrnSaver, libxshmfence, libXtst, mesa, nspr, nss, pango, udev, xdg-utils, libxcb }:

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
    cp -r opt/brave.com/brave-nightly/* $out/

    # Link the binary to the output bin directory
    ln -s $out/brave-browser-nightly $out/bin/brave-nightly

    # Wrap the binary
    wrapProgram $out/bin/brave-nightly \
      --add-flags "--enable-features=BraveAIChatAgentProfile" \
      --prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath buildInputs}
  '';

  meta = with lib; {
    description = "Brave Browser Nightly";
    homepage = "https://brave.com/download-nightly/";
    license = licenses.mpl20;
    platforms = [ "x86_64-linux" ];
  };
}
