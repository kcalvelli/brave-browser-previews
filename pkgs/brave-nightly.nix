{ callPackage, fetchurl }:
let
  version = "1.90.6";
  hash = "0gvi1cxbrjsjb7hv1m40wkqsyaii40zgk94ai46mqsvnkng5n4c1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}