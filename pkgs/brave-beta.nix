{ callPackage, fetchurl }:
let
  version = "1.87.175";
  hash = "110s5spfphbqk0wf21y0cd18qqpd2jb7ld44ka5jhd0hhnqfn2hy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}