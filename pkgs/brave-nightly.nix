{ callPackage, fetchurl }:
let
  version = "1.96.17";
  hash = "0y4bm1izs5zn9jxyvgh49zrq8njxb1p6vbhvvjg13fc63ilar431";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.17/brave-browser-nightly_1.96.17_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}