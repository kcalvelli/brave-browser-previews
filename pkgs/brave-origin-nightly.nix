{ callPackage, fetchurl }:
let
  version = "1.93.50";
  hash = "0n87y9hslhv5ka2yq4pxlxwji5d36jjdpid4fa8a6gj27d8nxhyw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.50_amd64.deb";
}
