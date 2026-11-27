{ callPackage, fetchurl }:
let
  version = "1.101.58";
  hash = "1mqjbkai8qm6jl01lnm1lavwjmg6gikmrf1xdiwlbr1rsfyiwi9q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.58/brave-browser-beta_1.101.58_amd64.deb";
}