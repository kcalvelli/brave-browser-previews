{ callPackage, fetchurl }:
let
  version = "1.92.123";
  hash = "1aha2x9vlv0vqx915r6d0k26c11vlw9hi707nnm3nyi78y9axknh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.123/brave-origin-beta_1.92.123_amd64.deb";
}