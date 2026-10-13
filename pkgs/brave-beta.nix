{ callPackage, fetchurl }:
let
  version = "1.98.55";
  hash = "1nv0fbrj9gyqjbqh48w47hskbraxvwqbvfsbkjic5iskby0n53l7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.55/brave-browser-beta_1.98.55_amd64.deb";
}