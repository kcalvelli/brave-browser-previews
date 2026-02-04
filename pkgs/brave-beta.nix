{ callPackage, fetchurl }:
let
  version = "1.87.181";
  hash = "0qg6l483b49sfkfmdi5hsrvvkvkc28bqlrnykxfbkbk49kvq7xsl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}