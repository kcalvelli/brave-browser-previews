{ callPackage, fetchurl }:
let
  version = "1.86.127";
  hash = "17ylw1rj2hhmc0bl4hvbzas1i13ys0gx5lrcihd6br6avzn422hz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}