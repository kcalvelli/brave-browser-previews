{ callPackage, fetchurl }:
let
  version = "1.92.125";
  hash = "0iv91xb2sqbmb4byf2anrivlz5j73qp4qryrcizir8x01yb8jscz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.125/brave-origin-beta_1.92.125_amd64.deb";
}