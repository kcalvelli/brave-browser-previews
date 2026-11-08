{ callPackage, fetchurl }:
let
  version = "1.101.34";
  hash = "1c4i4bpzkwbzrh1xx0f7s4qlri9a02sr39cch7z11z7ddljnp9ll";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.34/brave-origin-nightly_1.101.34_amd64.deb";
}
