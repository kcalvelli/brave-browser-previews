{ callPackage, fetchurl }:
let
  version = "1.98.54";
  hash = "1zd6dvfzdq9ipw5a8bimkmzhd412xfhczx36s09f7ajh83ak6ls2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.54/brave-browser-beta_1.98.54_amd64.deb";
}