{ callPackage, fetchurl }:
let
  version = "1.93.105";
  hash = "0w6ngaf2cc4jfrjl275lhfw3pr4p4ibrxlkw13ridydj8zhx2dp0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.93.105_amd64.deb";
}
