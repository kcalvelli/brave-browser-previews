{ callPackage, fetchurl }:
let
  version = "1.92.88";
  hash = "0b6rwsnk5m5vsv88g7y0p33c4r69d6n9sd59x68230l1qi9n3aq0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.88/brave-browser-nightly_1.92.88_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}