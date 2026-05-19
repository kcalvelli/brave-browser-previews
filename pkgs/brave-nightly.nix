{ callPackage, fetchurl }:
let
  version = "1.92.73";
  hash = "176xzyhvfrjx5mjkp3i9rmn8kias2h18k75bxvxdml54vl52nw78";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.73/brave-browser-nightly_1.92.73_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}