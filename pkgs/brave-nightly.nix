{ callPackage, fetchurl }:
let
  version = "1.92.20";
  hash = "1rylvp0x04xn3sd641p1ll1s1flam44g69ng83d6k66rq5k6k4kc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.20/brave-browser-nightly_1.92.20_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}