{ callPackage, fetchurl }:
let
  version = "1.93.43";
  hash = "0xj3b2pvjchh3jfj9p0hyapziyn22xr87jplmjr97k7bc04x5m0r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.43/brave-browser-nightly_1.93.43_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}