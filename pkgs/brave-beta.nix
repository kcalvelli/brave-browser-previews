{ callPackage, fetchurl }:
let
  version = "1.91.155";
  hash = "0yc3g6f28afmmmkyj2xkkhjclxqh8pn6zdjz6rpyf69ffl0fkwqi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.155/brave-browser-beta_1.91.155_amd64.deb";
}