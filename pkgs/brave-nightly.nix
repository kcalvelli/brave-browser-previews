{ callPackage, fetchurl }:
let
  version = "1.89.48";
  hash = "0y9zh8kdcll3zn9pfksjy2rw67fyg82jphnq4k8f0b788nsj10q3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}