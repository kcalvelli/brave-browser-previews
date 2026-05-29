{ callPackage, fetchurl }:
let
  version = "1.93.7";
  hash = "19yyplsi6b6vala3kyyr0gy5sqsvwsq2658gh77rqbdcp492niw3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.7/brave-browser-nightly_1.93.7_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}