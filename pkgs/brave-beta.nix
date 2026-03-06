{ callPackage, fetchurl }:
let
  version = "1.89.104";
  hash = "1jig3rqcl1gbfcf1nwgn0v9m0fr98brrh8vjkf3hyy1pyj1ai4zh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}