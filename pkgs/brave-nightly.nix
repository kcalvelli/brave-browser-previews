{ callPackage, fetchurl }:
let
  version = "1.94.56";
  hash = "1cc8ai1ni1xw3jqw29vsd1a7f817jygzl9fkdqpnkj2raa4rkyaj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.56/brave-browser-nightly_1.94.56_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}