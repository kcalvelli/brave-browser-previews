{ callPackage, fetchurl }:
let
  version = "1.90.100";
  hash = "0kx2j2gz4lrwj5bh0d3yqczs6y8684rj4k79ndfhlhfiag0qbd9d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}