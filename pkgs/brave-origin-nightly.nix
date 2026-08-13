{ callPackage, fetchurl }:
let
  version = "1.95.62";
  hash = "121ibjwkkghj45jnd4mnqfpylb2n4jy6wj1wbc63d2miv6gbx21v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.62_amd64.deb";
}
