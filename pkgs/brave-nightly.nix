{ callPackage, fetchurl }:
let
  version = "1.92.38";
  hash = "10drq78zbq59i9ji3ad95a17ksv35025f750didx4n4j3xrq2qym";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.38/brave-browser-nightly_1.92.38_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}