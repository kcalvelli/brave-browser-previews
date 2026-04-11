{ callPackage, fetchurl }:
let
  version = "1.90.102";
  hash = "1r0vfg6zky3r2k8mxin95clrmbmwyy410nknj8c8q4hjrl6ig1iy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}