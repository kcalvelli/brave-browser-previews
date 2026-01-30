{ callPackage, fetchurl }:
let
  version = "1.88.81";
  hash = "0j0hddcylz4j1gh7b9i9c22jf3c4254kfd4d6wxpf1mqfziwcsmr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}