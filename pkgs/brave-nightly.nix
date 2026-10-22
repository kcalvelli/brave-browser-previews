{ callPackage, fetchurl }:
let
  version = "1.100.23";
  hash = "17pmlkz4q2ri6gjqvn6vxpjnz0d8k8g2qpm24d3b1ma0vg07lila";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.23/brave-browser-nightly_1.100.23_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}