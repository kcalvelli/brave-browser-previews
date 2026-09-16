{ callPackage, fetchurl }:
let
  version = "1.97.38";
  hash = "11dgg9hx6mqsfmygij7vm50vylljf5y6x4kwyx6c1g7khq4k9l8d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.38/brave-browser-nightly_1.97.38_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}