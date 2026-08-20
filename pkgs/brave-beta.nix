{ callPackage, fetchurl }:
let
  version = "1.94.113";
  hash = "1slg2dfj9kndx0gqfbp5cp9vf0wgksl8fwhjzl3lpa3q8x46ifbh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.113/brave-browser-beta_1.94.113_amd64.deb";
}