{ callPackage, fetchurl }:
let
  version = "1.93.110";
  hash = "1m075qx7whf925n68m1k6f71aibl53rd12xdbsikvbg425f75vw9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.93.110_amd64.deb";
}
