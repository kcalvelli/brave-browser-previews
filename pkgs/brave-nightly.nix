{ callPackage, fetchurl }:
let
  version = "1.97.21";
  hash = "13gh3pbyhc5azzzyvc5314gzkf2nj4mn0mm52aryw0nm4mlyhbqw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.21/brave-browser-nightly_1.97.21_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}