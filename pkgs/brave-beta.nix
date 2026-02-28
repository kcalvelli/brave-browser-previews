{ callPackage, fetchurl }:
let
  version = "1.88.118";
  hash = "1lhqa7940bb1v6j2pl2g93a1a52w73pdspzr7lm6xhgb7axkchj9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}