{ callPackage, fetchurl }:
let
  version = "1.94.94";
  hash = "0205slwjb2s6z1fj7hp7hyb45cpy798pl9cr2hir4bgqksb3sjik";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.94.94_amd64.deb";
}
