{ callPackage, fetchurl }:
let
  version = "1.99.47";
  hash = "1mcdhbclnda8gcgmfkfybvsna54dnrixbxshiddd48dl7i6i4mpb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.47/brave-browser-beta_1.99.47_amd64.deb";
}