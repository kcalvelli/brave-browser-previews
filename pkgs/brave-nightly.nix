{ callPackage, fetchurl }:
let
  version = "1.88.62";
  hash = "1xyczb8p0b99y9vqggy5s32si2lqkkrhvmffpi242mlm2knxrlfq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}