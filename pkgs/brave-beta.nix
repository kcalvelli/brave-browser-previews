{ callPackage, fetchurl }:
let
  version = "1.94.102";
  hash = "02cqpii6xw1z5l30sh3c6pzxili6ygs0frrr3rmnp1gkkhmx05dv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.102/brave-browser-beta_1.94.102_amd64.deb";
}