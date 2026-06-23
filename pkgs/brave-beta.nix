{ callPackage, fetchurl }:
let
  version = "1.92.127";
  hash = "1i9zrcf81s7g88y72mvy15a6b0jmaa5g0sfm1nynlra2y1ckc30r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.127/brave-origin-beta_1.92.127_amd64.deb";
}