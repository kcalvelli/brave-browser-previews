{ callPackage, fetchurl }:
let
  version = "1.92.34";
  hash = "1544d0jndlk8kq9nnsscp6n977mf1qvb36rym2ngnbaib766pzp7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.34_amd64.deb";
}
