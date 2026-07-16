{ callPackage, fetchurl }:
let
  version = "1.93.119";
  hash = "1ggblp90wrgcay73p1i0qxp75v3601h7m4mk7fbqqvl3ipqcxin4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.119/brave-browser-beta_1.93.119_amd64.deb";
}