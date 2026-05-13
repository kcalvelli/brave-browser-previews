{ callPackage, fetchurl }:
let
  version = "1.92.54";
  hash = "0q4w5c5bl0xcc3wx0aq28i0dfxr0fqm3baacr4xj3szpv7mwp71g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.54/brave-browser-nightly_1.92.54_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}