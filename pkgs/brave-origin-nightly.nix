{ callPackage, fetchurl }:
let
  version = "1.102.21";
  hash = "08scq51hxpasg3n536spwndb4i1pi1m5jjqxn7i36xml4apa0krs";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.21/brave-origin-nightly_1.102.21_amd64.deb";
}
