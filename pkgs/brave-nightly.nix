{ callPackage, fetchurl }:
let
  version = "1.92.99";
  hash = "0cfvcd1dxl4d2caq8kpxa1qaxl5fbsyqlw4rxyqdxszzxi7vzffa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.99/brave-browser-nightly_1.92.99_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}