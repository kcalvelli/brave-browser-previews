{ callPackage, fetchurl }:
let
  version = "1.87.164";
  hash = "000gfzizlil1nh5ibg4g05bkibd707h3dwakza9scpc9za74xwzh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}