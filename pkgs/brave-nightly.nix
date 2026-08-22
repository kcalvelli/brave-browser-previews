{ callPackage, fetchurl }:
let
  version = "1.96.8";
  hash = "1nlb7ha4fkxynqk8ixn7nl78cmv7rj61bbk541jmnydyvam5h1k7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.8/brave-browser-nightly_1.96.8_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}