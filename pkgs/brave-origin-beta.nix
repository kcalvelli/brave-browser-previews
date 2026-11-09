{ callPackage, fetchurl }:
let
  version = "1.100.51";
  hash = "093lqgc9yiyqmwq4fbwn2fxn1kj9z9pc1lk8r6j9cv5kkpcfprh1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.51/brave-origin-beta_1.100.51_amd64.deb";
}
