{ callPackage, fetchurl }:
let
  version = "1.95.33";
  hash = "060x4jl2fxllv9d9pci7pfkcjns1ac3x02qkisng0gyvgcnyalxv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.33_amd64.deb";
}
