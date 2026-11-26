{ callPackage, fetchurl }:
let
  version = "1.101.57";
  hash = "1cjdn113a2481hix0g8jpwci3wv580dpkyif3vhj8rslmy2av1ii";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.57/brave-origin-beta_1.101.57_amd64.deb";
}
