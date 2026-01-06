{ callPackage, fetchurl }:
let
  version = "1.87.148";
  hash = "1n2dd05ybfwqlpk9z6fp35x2ds6l5zfidp4irz27jpyjqh5v0dh1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}