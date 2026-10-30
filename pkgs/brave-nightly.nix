{ callPackage, fetchurl }:
let
  version = "1.101.7";
  hash = "1x66vjn8jgfa0xgmiwplybxqaql6k0vil6hp1rndwyk747j6sbbp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.7/brave-browser-nightly_1.101.7_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}