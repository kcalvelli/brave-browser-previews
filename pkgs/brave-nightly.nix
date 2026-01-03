{ callPackage, fetchurl }:
let
  version = "1.87.141";
  hash = "1yrzs6n772nxg0m1xa49nhxis4r5hkjdvyq150xxdzz8vh6x05cf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}