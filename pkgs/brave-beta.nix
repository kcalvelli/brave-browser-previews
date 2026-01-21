{ callPackage, fetchurl }:
let
  version = "1.87.171";
  hash = "1cwry53gfnkj8y7zjwv607mpvxq94fmxx9a89wq0l1sdckk1gcjr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}