{ callPackage, fetchurl }:
let
  version = "1.90.104";
  hash = "1h3871iw4v0w2rqkgbf0nldqap324r6lg9vp9saxh7qcdlnc086x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}