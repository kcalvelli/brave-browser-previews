{ callPackage, fetchurl }:
let
  version = "1.102.37";
  hash = "1p1gg5xp75az6zlampi31334mwmdgnmzphpggpqvnfpia34bvixv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.37/brave-origin-nightly_1.102.37_amd64.deb";
}
