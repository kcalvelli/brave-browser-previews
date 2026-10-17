{ callPackage, fetchurl }:
let
  version = "1.100.7";
  hash = "1hhcyhmnx5i9rswx9p4wl2a9vps4qmq6rq3ajbpjj6rqja5xd5ln";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.100.7_amd64.deb";
}
