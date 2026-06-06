{ callPackage, fetchurl }:
let
  version = "1.93.35";
  hash = "0fbv0b55zkk2zyydngx28s6q9xclpcb1fhyhpagywq39fxkkvifm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.35_amd64.deb";
}
