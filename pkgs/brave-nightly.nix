{ callPackage, fetchurl }:
let
  version = "1.93.90";
  hash = "1nypwfblk952z0xszhp3lxmdkba5y0y7hyxkrxwgjl38cklhhycx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.90/brave-origin-nightly_1.93.90_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}