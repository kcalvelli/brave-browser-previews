{ callPackage, fetchurl }:
let
  version = "1.99.25";
  hash = "0l5jhfm7fv77lrcy0s49hcjah1d2pf44v2m79pbabhbafrsnkzy8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.99.25_amd64.deb";
}
