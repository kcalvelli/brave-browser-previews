{ callPackage, fetchurl }:
let
  version = "1.91.161";
  hash = "1c36vw71i9hgqjxi9qdpm2pf77y04xj042pb0kqzirdzl6w4ycfb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.161/brave-browser-beta_1.91.161_amd64.deb";
}