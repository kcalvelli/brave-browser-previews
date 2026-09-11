{ callPackage, fetchurl }:
let
  version = "1.96.51";
  hash = "11hi87k3rgx73kkn6gr9v0lmg2l3bv0c5px76z75xz9x1pavsh9a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.51/brave-browser-beta_1.96.51_amd64.deb";
}