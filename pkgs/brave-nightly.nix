{ callPackage, fetchurl }:
let
  version = "1.97.26";
  hash = "0qd684rrsplrqbshl5a8dqvv5m434p1sc51vz6mrna3gzw3smj97";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.26/brave-browser-nightly_1.97.26_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}