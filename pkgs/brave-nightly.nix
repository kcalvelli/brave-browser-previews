{ callPackage, fetchurl }:
let
  version = "1.98.17";
  hash = "0cgm9gjna7b535w9nf0d681ab5ripb29jsricpn7m3bj2qz9f2rq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.17/brave-browser-nightly_1.98.17_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}