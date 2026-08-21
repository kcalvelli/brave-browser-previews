{ callPackage, fetchurl }:
let
  version = "1.96.2";
  hash = "165qim90ck3y45jjw4qvmmn1qhdsn1fxfvpn15hl1chr9bf5nxk0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.96.2_amd64.deb";
}
