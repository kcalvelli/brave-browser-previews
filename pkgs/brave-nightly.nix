{ callPackage, fetchurl }:
let
  version = "1.93.22";
  hash = "1dns6y8451xxx2n496z1j8fc9abangxhhxkjnfh85k6kijxr93l2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.22/brave-browser-nightly_1.93.22_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}