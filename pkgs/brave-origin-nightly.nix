{ callPackage, fetchurl }:
let
  version = "1.92.79";
  hash = "1plyc4ynyr44s0nvzbb8xnp857la2qrcmrmp8b33pbg85yvbfq17";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.79_amd64.deb";
}
