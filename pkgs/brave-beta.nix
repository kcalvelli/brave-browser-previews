{ callPackage, fetchurl }:
let
  version = "1.88.103";
  hash = "036zx8ini39fk11n8jn7108g2q71kz5k9jvp1s164ikv0ppsz8wv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}