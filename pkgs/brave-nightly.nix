{ callPackage, fetchurl }:
let
  version = "1.88.52";
  hash = "0097xaxrdgm21f3g3dwfbzwqm6fvqism5svhrnkhpsdw4viipfx2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}