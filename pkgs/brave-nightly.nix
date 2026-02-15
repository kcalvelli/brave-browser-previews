{ callPackage, fetchurl }:
let
  version = "1.89.39";
  hash = "17wsf4zcfyf7avql9lxmcim6l3dyf91v52jqwhqr63mhkvi2xvsv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}