{ callPackage, fetchurl }:
let
  version = "1.94.97";
  hash = "0m2in3i8hsl99iy5mvnm2s4fld3djq8bbi793n1hq89n6571vsfv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.97/brave-browser-beta_1.94.97_amd64.deb";
}