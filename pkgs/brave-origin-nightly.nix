{ callPackage, fetchurl }:
let
  version = "1.91.121";
  hash = "04l48yfmq2lh759ymkvrigxy2qr1ndbkr9xjiyfmk4rfmvr6qp0a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.91.121_amd64.deb";
}
