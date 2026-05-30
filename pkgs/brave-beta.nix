{ callPackage, fetchurl }:
let
  version = "1.92.110";
  hash = "15gw55kml5ayvac1k2pf0a6f2bfwsbffvb3ymhq45rzfsbj71bzl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.110/brave-browser-beta_1.92.110_amd64.deb";
}