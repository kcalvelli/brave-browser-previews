{ callPackage, fetchurl }:
let
  version = "1.97.9";
  hash = "0jkznlf1v25lyqh56nbyvq2mdg1ymjl18rn6m3aj9yarnzh5f67a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.9/brave-browser-nightly_1.97.9_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}