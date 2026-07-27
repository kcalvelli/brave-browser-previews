{ callPackage, fetchurl }:
let
  version = "1.94.96";
  hash = "02l7w6m4hcw4ly06qcdk4fhprnssrkfjpi7sbj9cmn2ag36v12g8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.96/brave-browser-beta_1.94.96_amd64.deb";
}