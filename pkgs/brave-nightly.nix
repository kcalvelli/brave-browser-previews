{ callPackage, fetchurl }:
let
  version = "1.101.10";
  hash = "1rlwcqldcd3czh28r1dvgbsf9jxi5q3hmfjs755qwqzz22psq4ih";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.10/brave-browser-nightly_1.101.10_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}