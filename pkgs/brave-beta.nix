{ callPackage, fetchurl }:
let
  version = "1.87.165";
  hash = "0l97vwjiry2v3dvp2yrx260a1xk2qy5bb6m5s1inwwvk3ss68n5y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}