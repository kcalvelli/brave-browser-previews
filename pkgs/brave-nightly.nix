{ callPackage, fetchurl }:
let
  version = "1.98.12";
  hash = "0jd8dwj09zv80aspsng7957br29j2is5127lgk589ipzr4khrf7j";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.12/brave-browser-nightly_1.98.12_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}