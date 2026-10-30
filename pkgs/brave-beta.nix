{ callPackage, fetchurl }:
let
  version = "1.100.45";
  hash = "0dlyzkkr1ccwxp6jdiagsrml34fjiga884v4m4ahhp4s0gdqvz3q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.45/brave-browser-beta_1.100.45_amd64.deb";
}