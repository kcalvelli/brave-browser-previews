{ callPackage, fetchurl }:
let
  version = "1.101.54";
  hash = "19f29hvwgzjk7jb3mlhwgmbjdarczacdgp8364yhv7ym7hzkhcw9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.54/brave-browser-beta_1.101.54_amd64.deb";
}