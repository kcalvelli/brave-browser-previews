{ callPackage, fetchurl }:
let
  version = "1.92.15";
  hash = "0zlkhyyfl78977ap5m7zxqcgnkg8npfmx111052hz77s4a6qx577";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.15/brave-browser-nightly_1.92.15_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}