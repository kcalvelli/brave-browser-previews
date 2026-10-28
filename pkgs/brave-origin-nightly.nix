{ callPackage, fetchurl }:
let
  version = "1.100.37";
  hash = "17w3b135bfnvjr98mjz6pbayd4i3n1dznjx3v7dqsw58cwx1pj2m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.100.37_amd64.deb";
}
