{ callPackage, fetchurl }:
let
  version = "1.86.120";
  hash = "19qdlb4yq8ms9cd78h4x8fnwjqnlgw4mf9vp86lrdv5y536x6rqh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}