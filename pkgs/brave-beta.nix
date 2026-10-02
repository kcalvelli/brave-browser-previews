{ callPackage, fetchurl }:
let
  version = "1.98.48";
  hash = "1dhh172gh2zq56bc6xmqqyqrw23rw25f0px2i436wv1qvnvh4934";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.48/brave-browser-beta_1.98.48_amd64.deb";
}