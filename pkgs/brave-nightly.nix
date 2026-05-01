{ callPackage, fetchurl }:
let
  version = "1.92.9";
  hash = "0nwvd6kibwbgzxvm96y0hcycrfwk80qkrpvblvf697qnclx8xh2b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.9/brave-browser-nightly_1.92.9_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}