{ callPackage, fetchurl }:
let
  version = "1.100.52";
  hash = "15b05mgk10zcq1g8m4ynwbjkksvfjfky4llsq31jcr053rfaksw8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.52/brave-origin-beta_1.100.52_amd64.deb";
}
