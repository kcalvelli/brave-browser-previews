{ callPackage, fetchurl }:
let
  version = "1.92.4";
  hash = "158lykn4wfxzcfaxghjn2wq7ifbb9754i7kk9cbrfv314jzb99gb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.4_amd64.deb";
}
