{ callPackage, fetchurl }:
let
  version = "1.102.34";
  hash = "1660x2xv8lys98qcbxcywsa49kdn9dyaywxyh99f2cfjwl8jlw83";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.34/brave-browser-nightly_1.102.34_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}