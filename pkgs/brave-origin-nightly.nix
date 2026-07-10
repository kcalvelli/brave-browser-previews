{ callPackage, fetchurl }:
let
  version = "1.94.52";
  hash = "1q7x2i5cm7bmbnndrg9l6wdkyr56qyz5vz2yvh842cx29dy36scj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.52_amd64.deb";
}
