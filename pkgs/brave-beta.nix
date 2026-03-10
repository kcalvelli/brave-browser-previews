{ callPackage, fetchurl }:
let
  version = "1.89.108";
  hash = "10qi6q6jzgjsan31mxl4lf01xv16p8zkzzfc2blj6azmq7ir4jb3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}