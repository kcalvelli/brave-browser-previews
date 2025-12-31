{ callPackage, fetchurl }:
let
  version = "1.86.126";
  hash = "07bpqrn7swqa91j5j66hcq1izwvfkaqri8h8dxw7y6skqy8xk4g3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}