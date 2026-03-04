{ callPackage, fetchurl }:
let
  version = "1.89.99";
  hash = "1q0v9m3jssyp82fga1rvmrm8w8vbmifmsgmwhyywbq47br32ars1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}