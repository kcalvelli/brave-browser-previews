{ callPackage, fetchurl }:
let
  version = "1.100.49";
  hash = "0qjqyf2r03q8fismvnjh30rcxd6m665yb1x36fmw2g27x6yh7x9d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.49/brave-browser-beta_1.100.49_amd64.deb";
}