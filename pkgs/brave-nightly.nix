{ callPackage, fetchurl }:
let
  version = "1.100.40";
  hash = "1mvl2p6i1vfiq4s18pnc8r00hndjzdsm0q7sj4qhwncysp2piwxb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.40/brave-browser-nightly_1.100.40_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}