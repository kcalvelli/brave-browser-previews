{ callPackage, fetchurl }:
let
  version = "1.92.93";
  hash = "05863c5gp2jr1ms0rbknx1yr2khm9x3fl15vscbczzzqgdshkypa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.93/brave-browser-nightly_1.92.93_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}