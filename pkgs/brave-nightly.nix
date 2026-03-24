{ callPackage, fetchurl }:
let
  version = "1.90.60";
  hash = "0c16lx1yxxqzypvhh5jh0l2668pawrfbi4bkd54hc4x1l3jx58p3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}