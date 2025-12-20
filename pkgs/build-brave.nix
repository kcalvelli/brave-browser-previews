{
  lib,
  stdenv,
  fetchurl,
  buildPackages,
  alsa-lib,
  at-spi2-atk,
  at-spi2-core,
  atk,
  cairo,
  cups,
  dbus,
  dpkg,
  expat,
  fontconfig,
  freetype,
  gdk-pixbuf,
  glib,
  adwaita-icon-theme,
  gsettings-desktop-schemas,
  gtk3,
  gtk4,
  qt6,
  libX11,
  libXScrnSaver,
  libXcomposite,
  libXcursor,
  libXdamage,
  libXext,
  libXfixes,
  libXi,
  libXrandr,
  libXrender,
  libXtst,
  libdrm,
  libkrb5,
  libuuid,
  libxkbcommon,
  libxshmfence,
  libgbm,
  nspr,
  nss,
  pango,
  pipewire,
  snappy,
  udev,
  wayland,
  xdg-utils,
  coreutils,
  xorg,
  zlib,

  # Darwin dependencies
  unzip,
  makeWrapper,

  # Necessary for USB audio devices.
  pulseSupport ? stdenv.hostPlatform.isLinux,
  libpulseaudio,

  # For GPU acceleration support on Wayland (without the lib it doesn't seem to work)
  libGL,

  # For video acceleration via VA-API (--enable-features=AcceleratedVideoDecodeLinuxGL,AcceleratedVideoEncoder)
  # Note: Chrome 131+ renamed VaapiVideo* to AcceleratedVideo* flags
  libvaSupport ? stdenv.hostPlatform.isLinux,
  libva,
  enableVideoAcceleration ? libvaSupport,

  # For Vulkan support (--enable-features=Vulkan); disabled by default as it seems to break VA-API
  vulkanSupport ? false,
  addDriverRunpath,
  enableVulkan ? vulkanSupport,
}:

{
  pname,
  version,
  hash,
  url,
  commandLineArgs ? "",
}:

let
  inherit (lib)
    optional
    optionals
    makeLibraryPath
    makeSearchPathOutput
    makeBinPath
    optionalString
    strings
    escapeShellArg
    ;

  deps = [
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
    gtk4
    libdrm
    libX11
    libGL
    libxkbcommon
    libXScrnSaver
    libXcomposite
    libXcursor
    libXdamage
    libXext
    libXfixes
    libXi
    libXrandr
    libXrender
    libxshmfence
    libXtst
    libuuid
    libgbm
    nspr
    nss
    pango
    pipewire
    udev
    wayland
    xorg.libxcb
    zlib
    snappy
    libkrb5
    qt6.qtbase
  ]
  ++ optional pulseSupport libpulseaudio
  ++ optional libvaSupport libva;

  rpath = makeLibraryPath deps + ":" + makeSearchPathOutput "lib" "lib64" deps;
  binpath = makeBinPath deps;

  enableFeatures =
    optionals enableVideoAcceleration [
      "AcceleratedVideoDecodeLinuxGL"
      "AcceleratedVideoEncoder"
    ]
    ++ optional enableVulkan "Vulkan";

  disableFeatures = [
    "OutdatedBuildDetector"
  ] # disable automatic updates
  # The feature disable is needed for VAAPI to work correctly: https://github.com/brave/brave-browser/issues/20935
  ++ optionals enableVideoAcceleration [ "UseChromeOSDirectVideoDecoder" ];
in
stdenv.mkDerivation {
  inherit pname version;

  src = fetchurl {
    inherit url;
    sha256 = hash;
  };

  dontConfigure = true;
  dontBuild = true;
  dontPatchELF = true;
  doInstallCheck = stdenv.hostPlatform.isLinux;

  nativeBuildInputs =
    lib.optionals stdenv.hostPlatform.isLinux [
      dpkg
      # override doesn't preserve splicing https://github.com/NixOS/nixpkgs/issues/132651
      # Has to use `makeShellWrapper` from `buildPackages` even though `makeShellWrapper` from the inputs is spliced because `propagatedBuildInputs` would pick the wrong one because of a different offset.
      (buildPackages.wrapGAppsHook3.override { makeWrapper = buildPackages.makeShellWrapper; })
    ]
    ++ lib.optionals stdenv.hostPlatform.isDarwin [
      unzip
      makeWrapper
    ];

  buildInputs = lib.optionals stdenv.hostPlatform.isLinux [
    # needed for GSETTINGS_SCHEMAS_PATH
    glib
    gsettings-desktop-schemas
    gtk3
    gtk4

    # needed for XDG_ICON_DIRS
    adwaita-icon-theme
  ];

  installPhase =
    lib.optionalString stdenv.hostPlatform.isLinux ''
      runHook preInstall

      mkdir -p $out $out/bin

      cp -R usr/share $out
      cp -R opt/ $out/opt

      # Determine the brave variant directory and binary wrapper
      if [ -d $out/opt/brave.com/brave-beta ]; then
        BRAVE_DIR="brave-beta"
        BRAVE_BINARY="brave-browser-beta"
      elif [ -d $out/opt/brave.com/brave-nightly ]; then
        BRAVE_DIR="brave-nightly"
        BRAVE_BINARY="brave-browser-nightly"
      else
        echo "Error: Could not find brave-beta or brave-nightly directory"
        exit 1
      fi

      export BINARYWRAPPER=$out/opt/brave.com/$BRAVE_DIR/$BRAVE_BINARY

      # Fix path to bash in $BINARYWRAPPER
      substituteInPlace $BINARYWRAPPER \
          --replace-fail /bin/bash ${stdenv.shell} \
          --replace-fail 'CHROME_WRAPPER' 'WRAPPER'

      ln -sf $BINARYWRAPPER $out/bin/${pname}

      for exe in $out/opt/brave.com/$BRAVE_DIR/{brave,chrome_crashpad_handler}; do
          patchelf \
              --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
              --set-rpath "${rpath}" $exe
      done

      # Fix paths
      substituteInPlace $out/share/applications/*.desktop \
          --replace-warn /usr/bin/brave-browser-stable $out/bin/${pname} \
          --replace-warn /usr/bin/brave-browser-beta $out/bin/${pname} \
          --replace-warn /usr/bin/brave-browser-nightly $out/bin/${pname}

      # Add StartupWMClass for proper application identification in Wayland compositors
      for desktop in $out/share/applications/*.desktop; do
        if ! grep -q "^StartupWMClass=" "$desktop"; then
          echo "StartupWMClass=${pname}" >> "$desktop"
        fi
      done
      if [ -d $out/share/gnome-control-center/default-apps ]; then
        substituteInPlace $out/share/gnome-control-center/default-apps/*.xml \
            --replace-fail /opt/brave.com $out/opt/brave.com
      fi
      if [ -f $out/opt/brave.com/$BRAVE_DIR/default-app-block ]; then
        substituteInPlace $out/opt/brave.com/$BRAVE_DIR/default-app-block \
            --replace-fail /opt/brave.com $out/opt/brave.com
      fi

      # Correct icons location
      icon_sizes=("16" "24" "32" "48" "64" "128" "256")

      for icon in ''${icon_sizes[*]}
      do
          mkdir -p $out/share/icons/hicolor/$icon\x$icon/apps
          ICON_FILE=$(find $out/opt/brave.com/$BRAVE_DIR -name "product_logo_$icon*.png" | head -n 1)
          if [ -n "$ICON_FILE" ]; then
            ln -s "$ICON_FILE" $out/share/icons/hicolor/$icon\x$icon/apps/$BRAVE_BINARY.png
          else
            echo "Warning: Icon product_logo_$icon not found"
          fi
      done

      # Replace xdg-settings and xdg-mime
      ln -sf ${xdg-utils}/bin/xdg-settings $out/opt/brave.com/$BRAVE_DIR/xdg-settings
      ln -sf ${xdg-utils}/bin/xdg-mime $out/opt/brave.com/$BRAVE_DIR/xdg-mime

      runHook postInstall
    ''
    + lib.optionalString stdenv.hostPlatform.isDarwin ''
      runHook preInstall

      mkdir -p $out/{Applications,bin}

      cp -r . "$out/Applications/Brave Browser.app"

      makeWrapper "$out/Applications/Brave Browser.app/Contents/MacOS/Brave Browser" $out/bin/${pname}

      runHook postInstall
    '';

  preFixup = lib.optionalString stdenv.hostPlatform.isLinux ''
        # Add command line args to wrapGApp.
        gappsWrapperArgs+=(
          --prefix LD_LIBRARY_PATH : ${rpath}
          --prefix PATH : ${binpath}
          --suffix PATH : ${
            lib.makeBinPath [
              xdg-utils
              coreutils
            ]
          }
          --set CHROME_WRAPPER ${pname}
          ${optionalString (enableFeatures != [ ])
            "--add-flags \"--enable-features=${strings.concatStringsSep "," enableFeatures}\
''\${NIXOS_OZONE_WL:+
''\${WAYLAND_DISPLAY:+,WaylandWindowDecorations --enable-wayland-ime=true}}\""
          }
          ${optionalString (
            disableFeatures != [ ]
          ) "--add-flags \"--disable-features=${strings.concatStringsSep "," disableFeatures}\""}
          --add-flags "
    ''\${NIXOS_OZONE_WL:+
    ''\${WAYLAND_DISPLAY:+"--ozone-platform-hint=auto"}}"
          ${optionalString vulkanSupport "--prefix XDG_DATA_DIRS  : \"${addDriverRunpath.driverLink}/share\""}
          --add-flags ${escapeShellArg commandLineArgs}
        )
  '';

  installCheckPhase = ''
    # Check that the wrapper works correctly
    $out/bin/${pname} --version
  '';

  passthru.updateScript = ./update.sh;

  meta = {
    homepage = "https://brave.com/";
    description = "Privacy-oriented browser for Desktop and Laptop computers";
    changelog =
      "https://github.com/brave/brave-browser/blob/master/CHANGELOG_DESKTOP.md#"
      + lib.replaceStrings [ "." ] [ "" ] version;
    longDescription = ''
      Brave browser blocks the ads and trackers that slow you down,
      chew up your bandwidth, and invade your privacy. Brave lets you
      contribute to your favorite creators automatically.
    '';
    sourceProvenance = with lib.sourceTypes; [ binaryNativeCode ];
    license = lib.licenses.mpl20;
    maintainers = with lib.maintainers; [
      uskudnik
      rht
      jefflabonte
      nasirhm
      buckley310
      matteopacini
    ];
    platforms = [
      "aarch64-linux"
      "x86_64-linux"
      "aarch64-darwin"
      "x86_64-darwin"
    ];
    mainProgram = pname;
  };
}
