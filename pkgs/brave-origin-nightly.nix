{ callPackage, fetchurl }:
let
  version = "1.102.5";
  hash = "0ivs5dja7za65hqlk3hpz8i4696fzahjz77pld8rva7d6j13dn18";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.5/brave-origin-nightly_1.102.5_amd64.deb";
}
