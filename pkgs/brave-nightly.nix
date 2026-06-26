{ callPackage, fetchurl }:
let
  version = "1.94.6";
  hash = "0byr73bx0aflfgd4nsplzqipk8baxgvv5amq25gjh097qpv12fg8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.6/brave-origin-nightly_1.94.6_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}