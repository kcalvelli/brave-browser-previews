{ callPackage, fetchurl }:
let
  version = "1.94.62";
  hash = "0gpggrpyhn9micbdi5vsj7657vqsc91hmmaclm9yzj3wy4lrrsfr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.62_amd64.deb";
}
