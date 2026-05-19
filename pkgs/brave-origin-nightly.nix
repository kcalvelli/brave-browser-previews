{ callPackage, fetchurl }:
let
  version = "1.92.70";
  hash = "0ijinbnbxgnxq1yaw4nb3ddzi31yzcims12vfcybr0rx7bwnrp99";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.70_amd64.deb";
}
