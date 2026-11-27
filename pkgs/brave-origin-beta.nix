{ callPackage, fetchurl }:
let
  version = "1.101.58";
  hash = "1plzvzgba05sa9rz9mhgrjmnfrq2yx2j8bglmvdm3w66p2ish3rr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.58/brave-origin-beta_1.101.58_amd64.deb";
}
