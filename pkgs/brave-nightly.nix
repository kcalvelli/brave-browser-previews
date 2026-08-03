{ callPackage, fetchurl }:
let
  version = "1.95.31";
  hash = "0si3l955h9zw9wnjiajr3npmrskcr1d4an4bqyxiysbbcs16nn8b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.31/brave-browser-nightly_1.95.31_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}