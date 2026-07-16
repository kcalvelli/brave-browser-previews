{ callPackage, fetchurl }:
let
  version = "1.94.70";
  hash = "1lf8wwymlwz39xz3md7jqrasakk89361is512n85h3mm6qpv936w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.70_amd64.deb";
}
