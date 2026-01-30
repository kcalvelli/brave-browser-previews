{ callPackage, fetchurl }:
let
  version = "1.87.178";
  hash = "1x109jhp0dz99gz9q9rb83izq2ba1rkjpvph0rpfq9cqamb52kpa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}