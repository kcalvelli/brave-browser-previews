{ callPackage, fetchurl }:
let
  version = "1.89.120";
  hash = "16x9h83lxa2qvmy7x75f7v30fbllfzf31b3xh1yn0h0imgv7n9x0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}