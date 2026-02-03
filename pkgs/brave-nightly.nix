{ callPackage, fetchurl }:
let
  version = "1.88.91";
  hash = "0f0kl4f9b49javqyvp4gdnq9v4kkxq2h4lq27i1qddgw7s09vg59";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}