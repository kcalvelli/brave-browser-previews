{ callPackage, fetchurl }:
let
  version = "1.91.154";
  hash = "10r21ni17vbz102pc4rcvh172jwijbgij3g56hnyf733q56dih7m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.154/brave-browser-beta_1.91.154_amd64.deb";
}