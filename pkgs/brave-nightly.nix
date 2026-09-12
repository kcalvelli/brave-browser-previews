{ callPackage, fetchurl }:
let
  version = "1.97.29";
  hash = "1wkrv8yfqphfcg6m45crpprx65g6chmaj6amv5v60lyh4hyvbdda";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.29/brave-browser-nightly_1.97.29_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}