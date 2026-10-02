{ callPackage, fetchurl }:
let
  version = "1.99.6";
  hash = "1ay4p8arp281kh5q76w801n6jwnggsivymni1swfzlmg25d1d936";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.6/brave-browser-nightly_1.99.6_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}