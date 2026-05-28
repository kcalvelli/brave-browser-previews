{ callPackage, fetchurl }:
let
  version = "1.92.108";
  hash = "0rybhz6k26x9ckyk58rvn67xs64bjhkh8ppkgfmknmc1ypz8hq58";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.92.108_amd64.deb";
}
