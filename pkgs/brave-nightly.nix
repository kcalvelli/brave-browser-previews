{ callPackage, fetchurl }:
let
  version = "1.92.67";
  hash = "0g3f2n55h7fy48ncplxpjiir92w76iwnz224a36fkz5iifxacrz5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.67/brave-browser-nightly_1.92.67_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}