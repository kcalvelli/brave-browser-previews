{ callPackage, fetchurl }:
let
  version = "1.99.27";
  hash = "0nfj6rj4q8ayagw7rkv2wqpcaq2nngxmr6pv023nqr8gj9b5kdsp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.27/brave-browser-nightly_1.99.27_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}