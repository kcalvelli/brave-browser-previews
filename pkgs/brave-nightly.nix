{ callPackage, fetchurl }:
let
  version = "1.87.101";
  hash = "0x2sx52nk8m3wxlwq3invavp42idlk38w8ims3rp7diawxv8wdfp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}