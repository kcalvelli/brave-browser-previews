{ callPackage, fetchurl }:
let
  version = "1.93.107";
  hash = "0gxg0m6bva92iwpskpxmn171ygwf7ak4pkzn4vz6qdwvq3qm4ak0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.107/brave-origin-beta_1.93.107_amd64.deb";
}