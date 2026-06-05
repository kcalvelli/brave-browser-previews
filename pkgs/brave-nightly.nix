{ callPackage, fetchurl }:
let
  version = "1.93.33";
  hash = "1r5pacdmp7yfbngqdi21diipn85bl42ja2pbwh5r218w2z19bc4k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.33/brave-browser-nightly_1.93.33_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}