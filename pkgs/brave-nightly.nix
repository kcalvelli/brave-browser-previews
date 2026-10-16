{ callPackage, fetchurl }:
let
  version = "1.100.6";
  hash = "02frjqsimymcr74p6445qf46mf397d0z2vffga78sgj2769lvw5x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.6/brave-browser-nightly_1.100.6_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}