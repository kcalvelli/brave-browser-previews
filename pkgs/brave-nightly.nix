{ callPackage, fetchurl }:
let
  version = "1.93.95";
  hash = "1bzjfszxl247dzn7bjpm84kqwjjv83b6fcix6f8pn33wbv9rbqdk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.95/brave-origin-nightly_1.93.95_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}