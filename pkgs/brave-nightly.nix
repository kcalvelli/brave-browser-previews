{ callPackage, fetchurl }:
let
  version = "1.97.13";
  hash = "19q8bbwfvzzg7lhv8r0r6rwkg44ljmvyb4pa867rnhnq68bw66ll";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.13/brave-browser-nightly_1.97.13_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}