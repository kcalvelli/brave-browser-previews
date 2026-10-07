{ callPackage, fetchurl }:
let
  version = "1.98.51";
  hash = "0c950pk7blcny3dp81k6vjqdi74slvhqf87f4i7vxwjxgkgshs4s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.51/brave-browser-beta_1.98.51_amd64.deb";
}