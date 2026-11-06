{ callPackage, fetchurl }:
let
  version = "1.100.50";
  hash = "166ba1kyz61c69vwvixcmh1r5zqh4vxq0gc2vadigrcn8x20l17d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.50/brave-browser-beta_1.100.50_amd64.deb";
}