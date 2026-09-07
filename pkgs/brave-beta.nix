{ callPackage, fetchurl }:
let
  version = "1.96.47";
  hash = "1k5k6y7d8ddnhvl9cjgzarpnbjl2ni1600rv8lwagj5w68d7pig1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.47/brave-browser-beta_1.96.47_amd64.deb";
}