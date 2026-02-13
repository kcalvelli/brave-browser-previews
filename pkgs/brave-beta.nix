{ callPackage, fetchurl }:
let
  version = "1.88.106";
  hash = "0r0n7806k1r5iail03z52r6lvkn98bxh5ra4am5zckqmzgixhisx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}