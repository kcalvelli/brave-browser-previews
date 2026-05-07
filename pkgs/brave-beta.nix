{ callPackage, fetchurl }:
let
  version = "1.91.141";
  hash = "1xswyhdillfxwbqw7r7vsb56bwxp1j78vw4l5agg44bxkqlr7rln";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.141/brave-origin-beta_1.91.141_amd64.deb";
}