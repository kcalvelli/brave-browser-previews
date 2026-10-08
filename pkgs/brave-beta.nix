{ callPackage, fetchurl }:
let
  version = "1.98.52";
  hash = "01m4cs6r57jpbd6hc9cg2f0zy47jr1x23k5j9z1gyg2ijb4lsyhz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.52/brave-browser-beta_1.98.52_amd64.deb";
}