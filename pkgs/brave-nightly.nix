{ callPackage, fetchurl }:
let
  version = "1.99.40";
  hash = "0b807vll6scwvngijcxsm6z82djxjfmp6fs8y1x2vxl1x76jmsbw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.40/brave-browser-nightly_1.99.40_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}