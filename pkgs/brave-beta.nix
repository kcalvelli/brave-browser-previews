{ callPackage, fetchurl }:
let
  version = "1.99.53";
  hash = "1qsa0w3p0a136sgkgm98p9h2w9yawp5rkjq3br24myp8yzhdkbw6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.53/brave-browser-beta_1.99.53_amd64.deb";
}