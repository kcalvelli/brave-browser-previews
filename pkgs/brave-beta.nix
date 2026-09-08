{ callPackage, fetchurl }:
let
  version = "1.96.48";
  hash = "00jf4r1cv5kjdbaqyv0gl81p40a48lbll2q9lz73mj5y12zkk7y7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.48/brave-browser-beta_1.96.48_amd64.deb";
}