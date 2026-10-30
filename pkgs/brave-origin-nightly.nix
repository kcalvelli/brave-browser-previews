{ callPackage, fetchurl }:
let
  version = "1.101.3";
  hash = "0xdkkcdl4jy3fsrpcnv3p68cxl7dr5s21pi7mgzj9glr1779svxw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.101.3_amd64.deb";
}
