{ callPackage, fetchurl }:
let
  version = "1.99.46";
  hash = "1hvshl2krjwilpmqr4hfs5mfp4fg62hnv3jyl526nf5b5ibv6iia";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.46/brave-browser-beta_1.99.46_amd64.deb";
}