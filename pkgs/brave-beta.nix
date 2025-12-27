{ callPackage, fetchurl }:
let
  version = "1.86.124";
  hash = "0nzgc5zl31216j217s622rz9kszlpxim5c92ak81hqzmqai3iavy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}