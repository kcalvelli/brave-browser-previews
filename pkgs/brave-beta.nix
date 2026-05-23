{ callPackage, fetchurl }:
let
  version = "1.91.159";
  hash = "0znl2i5f8n46p39fsk81hk6w9qkiiciw714slm3lmm6rbl6vxjls";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.159/brave-browser-beta_1.91.159_amd64.deb";
}