{ callPackage, fetchurl }:
let
  version = "1.101.43";
  hash = "1s2691432f5w7hi9z1lswap7rfr92sggpmrw80nshvw9cc92jwip";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.43/brave-origin-nightly_1.101.43_amd64.deb";
}
