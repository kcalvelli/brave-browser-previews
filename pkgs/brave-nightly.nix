{ callPackage, fetchurl }:
let
  version = "1.94.82";
  hash = "1qa7sn3q7x7jdfcsx3mwicvmmqd25xg2kj8kk8nnqga5qsr6cixd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.82/brave-browser-nightly_1.94.82_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}