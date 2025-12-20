{ callPackage, fetchurl }:
let
  version = "1.87.99";
  hash = "1ivk49a63if6r6ijyn3dmrx27bl4av3wk2lvw43jgcqgb3sayqih";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}