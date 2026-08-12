{ callPackage, fetchurl }:
let
  version = "1.95.61";
  hash = "0va6cdgvbjli9s6s8xv00l7pg95wn5s3r9j4ijpbgvlfrciv3nba";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.61/brave-browser-nightly_1.95.61_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}