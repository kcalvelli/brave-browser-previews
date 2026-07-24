{ callPackage, fetchurl }:
let
  version = "1.95.2";
  hash = "1q24di76wj4pn7d4j1nvsjzpqfh48ch8sxh8p5dsgy1c7n4zj9vm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.2_amd64.deb";
}
