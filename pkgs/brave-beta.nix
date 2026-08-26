{ callPackage, fetchurl }:
let
  version = "1.95.90";
  hash = "178pivrmjb6nayn6wxn349559nx3hfcns2b1wbvp2ds4m53mcikj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.90/brave-browser-beta_1.95.90_amd64.deb";
}