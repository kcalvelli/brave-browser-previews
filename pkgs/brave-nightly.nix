{ callPackage, fetchurl }:
let
  version = "1.102.48";
  hash = "0fgd58676znxb79fjjjnf4zcaadww9v9538f1a1f67ivy4a4pgc1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.48/brave-browser-nightly_1.102.48_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}