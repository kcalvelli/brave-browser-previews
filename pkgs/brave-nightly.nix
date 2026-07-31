{ callPackage, fetchurl }:
let
  version = "1.95.26";
  hash = "17hzif4kq7spv4bwpahdk01xb2rlrpvzcn71s3i62xpknvl7xyfj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.26/brave-browser-nightly_1.95.26_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}