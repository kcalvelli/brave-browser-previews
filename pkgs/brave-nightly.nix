{ callPackage, fetchurl }:
let
  version = "1.93.18";
  hash = "0y6d6mczp9p0bmnczfw8aqnn2rc6gbh82yn8myp6j355ryw96cya";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.18/brave-browser-nightly_1.93.18_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}