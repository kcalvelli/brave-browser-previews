{ callPackage, fetchurl }:
let
  version = "1.91.162";
  hash = "055npdrsws84v48yh4w855k37arckjc0c8b0vn81w7a6a0x3x8b3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.162/brave-browser-beta_1.91.162_amd64.deb";
}