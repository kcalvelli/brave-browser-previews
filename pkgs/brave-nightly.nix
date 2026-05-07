{ callPackage, fetchurl }:
let
  version = "1.92.33";
  hash = "1r9r48m1hfgirabpljidmwqygzjmkxhix07r3qbr5ibiy287g26v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.33/brave-browser-nightly_1.92.33_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}