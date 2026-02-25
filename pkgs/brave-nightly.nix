{ callPackage, fetchurl }:
let
  version = "1.89.72";
  hash = "0vhryn1mv2zzq5692qsq1vwx03l7143vnyrzi27lpq17mhimgrsw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}