{ callPackage, fetchurl }:
let
  version = "1.94.12";
  hash = "05vkraz4ana9d29wsf9cnj7v2p383in5jksmcn9lyxjgb9mhyii2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.12_amd64.deb";
}
