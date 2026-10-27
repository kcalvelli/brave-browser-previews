{ callPackage, fetchurl }:
let
  version = "1.100.36";
  hash = "08hl3jc56chdynxinw757b6ys7yjb9q80agw771vs6xp51068i94";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.36/brave-browser-nightly_1.100.36_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}