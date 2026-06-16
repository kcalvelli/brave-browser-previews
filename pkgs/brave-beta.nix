{ callPackage, fetchurl }:
let
  version = "1.92.122";
  hash = "08kq393vqd1izpn9079c84w489vdcc0fsmyzhbfgljd5w4d1x2b7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.122/brave-origin-beta_1.92.122_amd64.deb";
}