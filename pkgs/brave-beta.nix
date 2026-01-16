{ callPackage, fetchurl }:
let
  version = "1.87.168";
  hash = "086sa4ngwi8f57361dyg9ka2vzgy41kn50vvf2fc9i75g5q3khyc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}