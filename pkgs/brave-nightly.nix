{ callPackage, fetchurl }:
let
  version = "1.99.9";
  hash = "06drdr0qq1z8sb2l7g1qcydz3hy1ffw4badrjhn1x6cl9r9z0fvm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.9/brave-browser-nightly_1.99.9_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}