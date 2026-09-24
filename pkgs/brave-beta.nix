{ callPackage, fetchurl }:
let
  version = "1.97.47";
  hash = "0xhjy06ypy6z1nzdm08phpgbxpfvanmda2w3gilnjpqs5l48x4l7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.47/brave-browser-beta_1.97.47_amd64.deb";
}