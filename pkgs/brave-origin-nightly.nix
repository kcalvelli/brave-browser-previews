{ callPackage, fetchurl }:
let
  version = "1.94.66";
  hash = "154a07clzp9i4hx74h3cxdh4y708nfbwz4m1rwghvl5hi51rrrvg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.66_amd64.deb";
}
