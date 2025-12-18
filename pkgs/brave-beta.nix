{ callPackage, fetchurl }:
let
  version = "1.86.118";
  hash = "0086nnkazy9ayhmbj76pvwb8bxflmzrgafndc9f743zb1iydka7q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}