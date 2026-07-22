{ callPackage, fetchurl }:
let
  version = "1.94.90";
  hash = "0zdn4h77hxrw2cbf3b52j58q6xcqyxhfiy75571ydwrd0dhn2bg1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.90/brave-browser-nightly_1.94.90_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}