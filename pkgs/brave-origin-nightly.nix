{ callPackage, fetchurl }:
let
  version = "1.92.89";
  hash = "0xhf4f559z7vh440yb0bwa2kiginzvi4wj6qy5645k28wg4213df";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.89_amd64.deb";
}
