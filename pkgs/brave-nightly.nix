{ callPackage, fetchurl }:
let
  version = "1.102.1";
  hash = "125qr099s70jvi8za0hbf8dj31hbwpmda76x9v4566kh9a7s2ja5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.1/brave-browser-nightly_1.102.1_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}