{ callPackage, fetchurl }:
let
  version = "1.88.84";
  hash = "1akvz1cbg6bgy8nw2bc8n3qapafkw8x9f6sp8sg2i33y5aa1vd8w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}