{ callPackage, fetchurl }:
let
  version = "1.93.108";
  hash = "13i2mhd3zkri0b39bvv7nq4pwg1k1jqz0fiv5rff2ckv3qyzq13w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.108/brave-browser-beta_1.93.108_amd64.deb";
}