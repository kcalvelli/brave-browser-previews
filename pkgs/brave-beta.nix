{ callPackage, fetchurl }:
let
  version = "1.88.115";
  hash = "18hrzyzbpawx4gdwzpxf5q9biyni4nbpn3vz97npb1pqr2l3gs5h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}