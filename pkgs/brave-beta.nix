{ callPackage, fetchurl }:
let
  version = "1.91.143";
  hash = "1z0m0s5fnv3y5w1pvp696hy9j2cc7y4bzm7pdg0b5pyjnn46ddsi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.143/brave-origin-beta_1.91.143_amd64.deb";
}