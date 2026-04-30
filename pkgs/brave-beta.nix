{ callPackage, fetchurl }:
let
  version = "1.90.117";
  hash = "10y71s1f1wkgihbdfa53m5fgapzjmjy98i732dk2yjkvpvndwjfz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.90.117/brave-browser-beta_1.90.117_amd64.deb";
}