{ callPackage, fetchurl }:
let
  version = "1.96.38";
  hash = "0rh0j01klizb3garh7i85ni0y94s9xlf4dk9jj9wvy83p1avgrvc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.38/brave-browser-nightly_1.96.38_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}