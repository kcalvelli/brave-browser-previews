{ callPackage, fetchurl }:
let
  version = "1.87.121";
  hash = "15x6x08kmhav0grxqys7ffnjc3dz3ngq6k9q11wa938rx5nr88l9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}