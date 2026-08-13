{ callPackage, fetchurl }:
let
  version = "1.94.108";
  hash = "03ad5rp8sldkhhnsgcgja8y4fdv5w1fl98mnqksx2bx3kgjlcbqi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.108/brave-browser-beta_1.94.108_amd64.deb";
}