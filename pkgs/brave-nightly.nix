{ callPackage, fetchurl }:
let
  version = "1.102.8";
  hash = "16r98cvk93il15b1lb54i15gw1lczd15v327446mhbmsqc1lmy5l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.8/brave-browser-nightly_1.102.8_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}