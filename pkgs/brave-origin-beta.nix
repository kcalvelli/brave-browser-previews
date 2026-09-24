{ callPackage, fetchurl }:
let
  version = "1.97.47";
  hash = "19ab1l5rkz4kmmn1k3zlm080jkqwqd75h3vn7s6vfqfs4ddxcf25";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.97.47_amd64.deb";
}
