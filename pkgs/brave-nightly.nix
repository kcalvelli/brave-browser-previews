{ callPackage, fetchurl }:
let
  version = "1.90.76";
  hash = "0virs1c049k5ckgmp6aqwcg1raggi7qh7igy646cyy2dcvpk9pip";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}