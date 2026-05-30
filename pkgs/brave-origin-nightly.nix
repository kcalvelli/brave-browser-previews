{ callPackage, fetchurl }:
let
  version = "1.93.8";
  hash = "07a40na87pfhdh2hc53ylhvyz2rv5kj32fgwagy96fladz5qymjc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.8_amd64.deb";
}
