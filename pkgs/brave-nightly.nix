{ callPackage, fetchurl }:
let
  version = "1.100.9";
  hash = "0nn38pla9bwf2vvbc64lvnpqxa1w3cpxzv95py00v34mgrl7v4q9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.9/brave-browser-nightly_1.100.9_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}