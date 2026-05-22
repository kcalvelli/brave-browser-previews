{ callPackage, fetchurl }:
let
  version = "1.92.85";
  hash = "1s9bsqnxzq828mb8j618b4457yx4845gji716wym55bwd91vn4wg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.85_amd64.deb";
}
