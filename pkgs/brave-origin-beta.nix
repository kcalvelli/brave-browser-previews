{ callPackage, fetchurl }:
let
  version = "1.101.47";
  hash = "1r1f5d8wmq0rrav58abbs8fm32ck83dyyibvky47dl7lmfxm9ars";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.47/brave-origin-beta_1.101.47_amd64.deb";
}
