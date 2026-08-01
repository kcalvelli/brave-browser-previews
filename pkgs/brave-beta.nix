{ callPackage, fetchurl }:
let
  version = "1.94.100";
  hash = "15niymx3jn851w09jlicd4i0adgw221ymk8v3l4s1k450l9x7d7c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.100/brave-browser-beta_1.94.100_amd64.deb";
}