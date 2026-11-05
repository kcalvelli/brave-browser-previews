{ callPackage, fetchurl }:
let
  version = "1.101.23";
  hash = "04hdwmibbif9l2hij8ndix89cpz15pxdkmh20dn7fww7rfg8fdh2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.101.23_amd64.deb";
}
