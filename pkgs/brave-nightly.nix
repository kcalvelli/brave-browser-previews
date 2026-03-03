{ callPackage, fetchurl }:
let
  version = "1.89.93";
  hash = "0f4gpdrmnz2w7b7pck422vyn41p9v4rjv5pfp6pzsgrqnc66lw91";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}