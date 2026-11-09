{ callPackage, fetchurl }:
let
  version = "1.100.51";
  hash = "086az69hl4wf1fajp4akjlxxvc7yb0v6dzwlyflrclpvmbr4x58p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.51/brave-browser-beta_1.100.51_amd64.deb";
}