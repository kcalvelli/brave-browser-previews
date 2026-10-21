{ callPackage, fetchurl }:
let
  version = "1.99.48";
  hash = "0h601jipnvnxas0cfmdg3rw7k9r3n3865h6x6c4dhhmsrg51iklk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.48/brave-origin-beta_1.99.48_amd64.deb";
}