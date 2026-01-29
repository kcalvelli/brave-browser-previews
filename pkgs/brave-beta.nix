{ callPackage, fetchurl }:
let
  version = "1.87.177";
  hash = "07qacvsi8gjdyd4fg5dwvk63hbjkh05hij59fry739hpsmbgsjlf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}