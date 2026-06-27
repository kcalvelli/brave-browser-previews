{ callPackage, fetchurl }:
let
  version = "1.93.106";
  hash = "180b7362zshvpbk7sddnsdf7ic7blf441ljcf5ig1qv2v470yps6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.106/brave-origin-beta_1.93.106_amd64.deb";
}