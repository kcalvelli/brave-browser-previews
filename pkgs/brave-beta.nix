{ callPackage, fetchurl }:
let
  version = "1.88.109";
  hash = "1jlkabsj56y31vjsr5xd6x4srk3xp1b6qh0k6ncpizcar19lv1m1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}