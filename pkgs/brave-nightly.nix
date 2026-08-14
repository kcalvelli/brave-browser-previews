{ callPackage, fetchurl }:
let
  version = "1.95.70";
  hash = "1cfjhpxxa6gwkzicx6xivb2h4mx5vdjsynmz6jpsm9fs5bnmr48g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.70/brave-browser-nightly_1.95.70_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}