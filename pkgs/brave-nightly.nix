{ callPackage, fetchurl }:
let
  version = "1.93.13";
  hash = "0mvpc9jx7n2czpr3a3gikkdlg675fr5ncfbjcvkzwnbjrav1kscj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.13/brave-browser-nightly_1.93.13_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}