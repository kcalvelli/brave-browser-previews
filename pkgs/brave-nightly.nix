{ callPackage, fetchurl }:
let
  version = "1.90.28";
  hash = "0qx206ic7mcxmz4s20jzx8k8dznp1bqz1mvrqvmmg7h09w6m8m5x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}