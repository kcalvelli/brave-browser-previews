{ callPackage, fetchurl }:
let
  version = "1.92.108";
  hash = "1vpb9q2rg4sijrf7jswaxy6rrvs56wh0z27hz9kcams4s0l0xqdh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.108/brave-browser-beta_1.92.108_amd64.deb";
}