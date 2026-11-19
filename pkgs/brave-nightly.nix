{ callPackage, fetchurl }:
let
  version = "1.102.21";
  hash = "138j91m5vlfaws6k1qqpisj4x3k8i0s4m1x3gbfvingmm9rnfjgp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.21/brave-browser-nightly_1.102.21_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}