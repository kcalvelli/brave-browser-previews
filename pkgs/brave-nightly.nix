{ callPackage, fetchurl }:
let
  version = "1.92.41";
  hash = "00yc1ddx7r2mxv0832ymb37qp8jjp25p5hzf1gk6f68q8dln9f3c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.41/brave-browser-nightly_1.92.41_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}