{ callPackage, fetchurl }:
let
  version = "1.89.118";
  hash = "0hypk93rn34zgx9rscxf5fw19pdm6aar0na6qq3sy66hfbi4i3v2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}