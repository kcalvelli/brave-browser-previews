{ callPackage, fetchurl }:
let
  version = "1.92.61";
  hash = "02q60cwqggavj1xpd02xy4q05bgh7nzx6sxagakykb1b811qj793";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.61_amd64.deb";
}
