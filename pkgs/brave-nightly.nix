{ callPackage, fetchurl }:
let
  version = "1.89.15";
  hash = "1lvfah9n3bmdgd5vpfqdk3mhrlh73c05w4bg2ypn1dy0dkzgrf54";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}