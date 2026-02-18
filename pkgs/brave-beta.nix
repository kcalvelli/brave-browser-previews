{ callPackage, fetchurl }:
let
  version = "1.88.110";
  hash = "1s4ykzk2brmp50disq2imzdplbrvgl3lnci9l8x7fha6p8m0r7by";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}