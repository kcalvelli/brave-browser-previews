{ callPackage, fetchurl }:
let
  version = "1.101.49";
  hash = "0wk2cmf2zcm29wkzqql1rggzzasd2cvsb6gzs8hshngv155hsfna";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.49/brave-browser-beta_1.101.49_amd64.deb";
}