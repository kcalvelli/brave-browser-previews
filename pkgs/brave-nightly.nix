{ callPackage, fetchurl }:
let
  version = "1.87.131";
  hash = "080p1hfgh9lxl6w6h3lscw1zgy69l0ddsqrfj6l0kpzmvqf13kf1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}