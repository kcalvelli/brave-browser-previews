{ callPackage, fetchurl }:
let
  version = "1.88.7";
  hash = "1frc7f8r6aw4dc80vjxwqnkxp3qqa0d6y7mpzia06gc0vxi3plj3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}