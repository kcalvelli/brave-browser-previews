{ callPackage, fetchurl }:
let
  version = "1.102.30";
  hash = "18d3bb41483zywyjwdrj4vmzjhwgvbxa0l9m61cshzq0i7shgcql";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.30/brave-origin-nightly_1.102.30_amd64.deb";
}
