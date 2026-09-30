{ callPackage, fetchurl }:
let
  version = "1.97.52";
  hash = "05hj7li9qk219dvmzz9dy8qrj4m0drq81max2c2rq1gfswq3yv9k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.52/brave-browser-beta_1.97.52_amd64.deb";
}