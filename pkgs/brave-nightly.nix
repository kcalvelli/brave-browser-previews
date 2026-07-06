{ callPackage, fetchurl }:
let
  version = "1.94.39";
  hash = "1a33p834d7hz4fy18vwimmhvkv1pw3nr9igzrnx1zfsh9vqhyvb1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.39/brave-browser-nightly_1.94.39_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}