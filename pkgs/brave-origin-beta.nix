{ callPackage, fetchurl }:
let
  version = "1.100.50";
  hash = "03m2i0irldrkxrpg7d0090fgivs3lgsdw1wa3rs24gmjglpdsjhz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.50/brave-origin-beta_1.100.50_amd64.deb";
}
