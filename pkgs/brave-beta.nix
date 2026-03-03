{ callPackage, fetchurl }:
let
  version = "1.88.119";
  hash = "10ldh48ajs0i5iqpkscg4c8l9h44lm0zp1n8krj5k10yyvi7zfk9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}