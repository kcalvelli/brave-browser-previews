{ callPackage, fetchurl }:
let
  version = "1.101.22";
  hash = "077lbfppaai27jlc3vbqdyf2nvzfw6ap5wqc824ngyxfpzhsfmxh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.22/brave-browser-nightly_1.101.22_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}