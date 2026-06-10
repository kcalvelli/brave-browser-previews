{ callPackage, fetchurl }:
let
  version = "1.92.118";
  hash = "0lnsvhw19q7rlw9grj7076wb5x6fi9zhwdfj7css34mqw47lviri";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.118/brave-origin-beta_1.92.118_amd64.deb";
}