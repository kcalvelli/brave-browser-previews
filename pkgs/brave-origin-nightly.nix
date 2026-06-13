{ callPackage, fetchurl }:
let
  version = "1.93.62";
  hash = "0phg98aqzrqlvbw9l5m72q34ifyl62z8bb768vnfba4j41ifs9f8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.62_amd64.deb";
}
