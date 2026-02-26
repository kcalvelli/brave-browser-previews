{ callPackage, fetchurl }:
let
  version = "1.88.116";
  hash = "1djlz597kixgdvix8zhc4bhls0ryg1k5k3p2l5ayc8m2f38sb1w8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}