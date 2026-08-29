{ callPackage, fetchurl }:
let
  version = "1.96.29";
  hash = "1imzix3kkh9g87682y1irm2w5sdms44ssw6wia7m4x0rpla3z71k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.29/brave-browser-nightly_1.96.29_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}