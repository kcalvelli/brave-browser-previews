{ callPackage, fetchurl }:
let
  version = "1.100.12";
  hash = "042qqbkp97z2lrraz32h1nfsr0n0ri3dwwhclbd4zafayg0sznr2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.12/brave-browser-nightly_1.100.12_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}