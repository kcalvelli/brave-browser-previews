{ callPackage, fetchurl }:
let
  version = "1.96.34";
  hash = "0yyad19iadcbxnllfnpsfzcpqglnkbw6380ha99f1582nqqwvmmh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.34/brave-browser-nightly_1.96.34_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}