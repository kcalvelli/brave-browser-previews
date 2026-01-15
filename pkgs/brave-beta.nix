{ callPackage, fetchurl }:
let
  version = "1.87.166";
  hash = "009v1a0p0hk8js09dpnzq8mydh99mmlps321cksvfjih4da2n6ln";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}