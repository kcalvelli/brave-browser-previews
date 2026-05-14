{ callPackage, fetchurl }:
let
  version = "1.91.151";
  hash = "13bhn2vndikh7f1l0gfiazzgarn56i8h50d25iz0m7sfg455477l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.151/brave-origin-beta_1.91.151_amd64.deb";
}