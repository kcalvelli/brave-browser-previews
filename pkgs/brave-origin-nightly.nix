{ callPackage, fetchurl }:
let
  version = "1.93.75";
  hash = "1q8i4kw8jc4jm5s9ja8vchgn900mlqipijy536j70fqghhjkcrds";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.75_amd64.deb";
}
