{ callPackage, fetchurl }:
let
  version = "1.101.47";
  hash = "02sm5ybpvn6zm33ald2s6a483gdzvc0y1ggw5762lfs06qzzlfk9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.47/brave-browser-beta_1.101.47_amd64.deb";
}