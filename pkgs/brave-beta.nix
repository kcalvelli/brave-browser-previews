{ callPackage, fetchurl }:
let
  version = "1.86.134";
  hash = "0mli76vzhdc9h8nvr38a76z86sh8hviy710qgn8vbmyzjx3d81cx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}