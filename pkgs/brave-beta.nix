{ callPackage, fetchurl }:
let
  version = "1.95.92";
  hash = "1f00xvj42m00316f5xxx0l889vxzdwg2y9rcdybi8d3arx39ahc7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.92/brave-browser-beta_1.95.92_amd64.deb";
}