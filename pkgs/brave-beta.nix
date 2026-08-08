{ callPackage, fetchurl }:
let
  version = "1.94.105";
  hash = "182myblbyckvnj3n9vd715xcz8x36bjz8lrfknwjfkhqq0ajaq6d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.105/brave-browser-beta_1.94.105_amd64.deb";
}