{ callPackage, fetchurl }:
let
  version = "1.95.97";
  hash = "1l9nhpvnviwzbf81lb6pxbhnbz23f3s69ajmfqcj11z3p28llpqg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.97/brave-browser-beta_1.95.97_amd64.deb";
}