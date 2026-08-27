{ callPackage, fetchurl }:
let
  version = "1.96.23";
  hash = "0gni0zpzib7xgcmh6pqfm3s7v3kah1h9q4pv1qhwhidy0zdgvacv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.96.23_amd64.deb";
}
