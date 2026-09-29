{ callPackage, fetchurl }:
let
  version = "1.98.39";
  hash = "0vb3kzi0y99lnp7lz938ri4dbjxqa94mr2w46v83p04ac4imwg3x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.39/brave-browser-nightly_1.98.39_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}