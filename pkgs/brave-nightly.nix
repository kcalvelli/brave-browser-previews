{ callPackage, fetchurl }:
let
  version = "1.95.78";
  hash = "0a1qyrc2waxqhxcswm9z7bhgj2lvmmzksmq50s16hjjbg1drf7b8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.78/brave-browser-nightly_1.95.78_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}