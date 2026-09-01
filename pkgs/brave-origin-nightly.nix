{ callPackage, fetchurl }:
let
  version = "1.96.31";
  hash = "04c90lw4aszq0j38k1k2smh2r3wv6yxs56ybxnnwmgw02cjac8y4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.96.31_amd64.deb";
}
