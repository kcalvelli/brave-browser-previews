{ callPackage, fetchurl }:
let
  version = "1.98.49";
  hash = "0q350gv0lr1s4lyn0z3fpds4m0vf1l8xviyliwl43dj22ns2hr6v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.49/brave-browser-beta_1.98.49_amd64.deb";
}