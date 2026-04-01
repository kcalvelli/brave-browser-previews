{ callPackage, fetchurl }:
let
  version = "1.89.127";
  hash = "1620bq7bkmaaah09kgyszjjlxgrlmnnfwik1nawcvaszpvp3iza2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}