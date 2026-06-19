{ callPackage, fetchurl }:
let
  version = "1.92.125";
  hash = "0iv91xb2sqbmb4byf2anrivlz5j73qp4qryrcizir8x01yb8jscz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.92.125_amd64.deb";
}
