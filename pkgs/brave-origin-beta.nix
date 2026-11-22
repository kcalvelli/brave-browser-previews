{ callPackage, fetchurl }:
let
  version = "1.101.53";
  hash = "1wyx6dxw9rb5slzkm9zj990c9vi4kbn29hkx13liphrbmawwlf4d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.53/brave-origin-beta_1.101.53_amd64.deb";
}
