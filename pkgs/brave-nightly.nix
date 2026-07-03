{ callPackage, fetchurl }:
let
  version = "1.94.33";
  hash = "00rz3nnm1jsn3ipg0prksxm5vmiwgd2h8dx124pj9fbr4m6m1fnj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.33/brave-browser-nightly_1.94.33_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}