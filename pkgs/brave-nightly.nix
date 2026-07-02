{ callPackage, fetchurl }:
let
  version = "1.94.27";
  hash = "1jqrzd8h48s0q0g8n6g30xwh62x3fsxpapx16pq36d03f20h15zh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.27/brave-browser-nightly_1.94.27_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}