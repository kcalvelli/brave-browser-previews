{ callPackage, fetchurl }:
let
  version = "1.92.69";
  hash = "19kwkx312x0m7p57a0pp3d8kvk6crgpaj8918aagimfam5rl9lvy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.69/brave-browser-nightly_1.92.69_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}