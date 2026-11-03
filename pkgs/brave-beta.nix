{ callPackage, fetchurl }:
let
  version = "1.100.47";
  hash = "086nf49y2ggfvp6g5ky164dn8k2gyg0w4f2bivnyd3ywhp5rxsqd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.47/brave-browser-beta_1.100.47_amd64.deb";
}