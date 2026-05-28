{ callPackage, fetchurl }:
let
  version = "1.91.163";
  hash = "1972npbnrx32mcgslfv202sgnpf2mcjr277yw001sf769f6ir7rk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.163/brave-browser-beta_1.91.163_amd64.deb";
}