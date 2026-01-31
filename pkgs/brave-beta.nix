{ callPackage, fetchurl }:
let
  version = "1.87.179";
  hash = "0159ww6f6ka8g1y47bm2snpbgv1vdvx08il4i3vws6yrx6a3alnw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}