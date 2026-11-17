{ callPackage, fetchurl }:
let
  version = "1.101.50";
  hash = "17lbglngzqf02ckc7nvaw84fv0kiwpc1kmqbz7zx0sh97zwyc9v2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.50/brave-browser-beta_1.101.50_amd64.deb";
}