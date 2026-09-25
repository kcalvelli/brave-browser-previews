{ callPackage, fetchurl }:
let
  version = "1.98.31";
  hash = "0z84qn912jmipjjiqv168pmab2vz3lgwysapvg9zw6mzpcq59msk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.31/brave-origin-nightly_1.98.31_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}