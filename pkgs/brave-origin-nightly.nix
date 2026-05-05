{ callPackage, fetchurl }:
let
  version = "1.92.16";
  hash = "1w1iyrl9has7b34lvf57vnn3833ddw2ky4irmrq2xhz5yiiyrmnx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.16_amd64.deb";
}
