{ callPackage, fetchurl }:
let
  version = "1.93.120";
  hash = "1vd2p6kki3qp39bfgd9lbjdqkf6492y50cl6ff55m5vxbcvq5m4x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.93.120_amd64.deb";
}
