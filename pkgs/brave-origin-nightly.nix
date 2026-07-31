{ callPackage, fetchurl }:
let
  version = "1.95.23";
  hash = "184ym56vdfr91h33f9lzdh772gjy447465z0d0i084yaaa91z9k2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.23_amd64.deb";
}
