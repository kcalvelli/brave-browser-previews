{ callPackage, fetchurl }:
let
  version = "1.89.122";
  hash = "0a9wf385nf3ikxh7z3xg5bgxq4di5g2i46kq9irmlgibfy8vndhg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}