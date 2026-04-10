{ callPackage, fetchurl }:
let
  version = "1.90.101";
  hash = "03fvvylcvibrx668m7mcsd4f7gp2qw4vq9av5ibcqvdxx30pljar";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}