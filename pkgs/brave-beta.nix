{ callPackage, fetchurl }:
let
  version = "1.92.121";
  hash = "0zh8vyxyk85k7jg5qa89m85bgbx75ikf2jlxpdsil01wklfrasi0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.121/brave-origin-beta_1.92.121_amd64.deb";
}