{ callPackage, fetchurl }:
let
  version = "1.93.24";
  hash = "1pzvhfxqhz2y04kg8qag740v225xcp9x734n5zqd68xfv6c0v2gd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.24_amd64.deb";
}
