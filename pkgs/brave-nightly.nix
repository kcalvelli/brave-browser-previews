{ callPackage, fetchurl }:
let
  version = "1.93.64";
  hash = "178k2b5f0i4rzmlly62kbcrm5yah8ajjhil2a787s32gh82hhi2x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.64/brave-origin-nightly_1.93.64_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}