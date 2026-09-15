{ callPackage, fetchurl }:
let
  version = "1.97.34";
  hash = "0m1pcngmmn36lm9qj11bpqzr7c9g0rmbn2lbrl2hcp1aj90j441w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.34/brave-browser-nightly_1.97.34_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}