{ callPackage, fetchurl }:
let
  version = "1.90.31";
  hash = "1kk33zqdy2xnf7dymcrc9q6x7lvzb907b6299f2l6syhsciyphza";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}