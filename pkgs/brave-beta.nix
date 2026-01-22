{ callPackage, fetchurl }:
let
  version = "1.87.172";
  hash = "0b76ajl6xzrr8v42iwpqf5l79yd843y9cxnv586abgcg1q50rwas";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}