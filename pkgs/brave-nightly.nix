{ callPackage, fetchurl }:
let
  version = "1.87.138";
  hash = "1mgd3m0975sgqwgzsicmq729jfxhg2xzgf79my4grcn7ra2rx1gz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}