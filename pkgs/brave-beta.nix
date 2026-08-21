{ callPackage, fetchurl }:
let
  version = "1.95.87";
  hash = "19ljzs7w2ya2rvj7p7fv0qfv93kvyhiz7rjilq9qnn7wxzpi2ccd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.87/brave-browser-beta_1.95.87_amd64.deb";
}