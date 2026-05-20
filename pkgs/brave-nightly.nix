{ callPackage, fetchurl }:
let
  version = "1.92.78";
  hash = "0wxm9812wcprxpslnnq7brsdak887h9d86hc920g8kzm9sxyvpf8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.78/brave-browser-nightly_1.92.78_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}