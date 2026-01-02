{ callPackage, fetchurl }:
let
  version = "1.86.128";
  hash = "17rlpy2a453zmx6bk8y5q2pnwnzpdqbs6sfwcg0ih53m0fk7f0bn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}