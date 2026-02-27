{ callPackage, fetchurl }:
let
  version = "1.88.117";
  hash = "0sdvzhl3zyvv8pxgzb82dkx4l4b07qq4cm2b839z2kpxsl0ixjz1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}