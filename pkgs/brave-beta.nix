{ callPackage, fetchurl }:
let
  version = "1.94.106";
  hash = "0wa3ipr7vjkfvs45gfp7wlwb0ldyk03zy1v6bjcc0krzqfcd69y9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.106/brave-browser-beta_1.94.106_amd64.deb";
}