{ callPackage, fetchurl }:
let
  version = "1.87.132";
  hash = "16m89yv7q9xxy0006k12qjg6wwbplndrgmxc946gpmgnfx4lmgg0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}