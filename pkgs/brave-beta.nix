{ callPackage, fetchurl }:
let
  version = "1.87.176";
  hash = "08cqjx5mdxad42ywbyrksgjgqpxwxdaszzk6fjmb5j6s0s2349fq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}