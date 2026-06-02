{ callPackage, fetchurl }:
let
  version = "1.92.111";
  hash = "05danw8cw3s0y36kmaij1i76j2kdrbb0r2pwwwyfirgp54aikibv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.111/brave-browser-beta_1.92.111_amd64.deb";
}