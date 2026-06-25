{ callPackage, fetchurl }:
let
  version = "1.92.129";
  hash = "1p9pnfp3vpf4jjigc79myznnpjpz2vrz10m9rg42b5iganpzjxr6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.129/brave-origin-beta_1.92.129_amd64.deb";
}