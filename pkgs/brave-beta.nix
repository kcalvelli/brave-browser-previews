{ callPackage, fetchurl }:
let
  version = "1.94.95";
  hash = "1nf3xv5brbmc0yixc0y3xm482j3f18a4yz72pff9972aqrsb1g8v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.95/brave-browser-beta_1.94.95_amd64.deb";
}