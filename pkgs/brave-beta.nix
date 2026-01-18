{ callPackage, fetchurl }:
let
  version = "1.87.169";
  hash = "0h26rf4ww0gad82h7l6na3sc52dlwwwr9bnchljarq68mwvcmr73";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}