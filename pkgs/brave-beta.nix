{ callPackage, fetchurl }:
let
  version = "1.87.163";
  hash = "136z9rlp854sy6bcja2mdgaw51b7bqy6z8qqy6nr1y9mbr2lf0jb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}