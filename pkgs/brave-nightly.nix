{ callPackage, fetchurl }:
let
  version = "1.100.20";
  hash = "1iyzcx0iv611nkdaqvjwr6icqnr8f0qr3nrgr00bcmfrmwgpmzrl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.20/brave-origin-nightly_1.100.20_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}