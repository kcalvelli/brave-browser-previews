{ callPackage, fetchurl }:
let
  version = "1.95.88";
  hash = "0x3rqc9zwli3pqcgnaksxx3ah9wn325k14pb774djxd7hka7fk0c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.88/brave-browser-beta_1.95.88_amd64.deb";
}