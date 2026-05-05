{ callPackage, fetchurl }:
let
  version = "1.91.137";
  hash = "1al551y0sgaixzrs9i1j3ifg94jncykgb1pd7cyg9phq7wyqcln3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.137/brave-origin-beta_1.91.137_amd64.deb";
}