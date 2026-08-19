{ callPackage, fetchurl }:
let
  version = "1.94.112";
  hash = "05in37mg8cx1cbnwxxdkzi60x2s1mldvg2c0pxgcbyjnacfiflvk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.94.112_amd64.deb";
}
