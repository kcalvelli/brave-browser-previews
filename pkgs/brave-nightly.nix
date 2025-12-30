{ callPackage, fetchurl }:
let
  version = "1.87.127";
  hash = "0r3knr6033fpk1bra524ka5rd1cc74gfy8x2pimgalkzlmydxgwn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}