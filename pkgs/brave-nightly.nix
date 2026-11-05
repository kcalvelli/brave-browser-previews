{ callPackage, fetchurl }:
let
  version = "1.101.26";
  hash = "14sv8b82v00ardcjszr6n6m6fmclwnqlw4cy8g38wylx65bhj1c9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.26/brave-browser-nightly_1.101.26_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}