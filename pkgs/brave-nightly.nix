{ callPackage, fetchurl }:
let
  version = "1.93.70";
  hash = "1rvrb485ryfli1zsc2c31ymn9ayxakng0rfz10hzlbvafcvdggs6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.70/brave-origin-nightly_1.93.70_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}