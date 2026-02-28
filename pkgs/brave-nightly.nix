{ callPackage, fetchurl }:
let
  version = "1.89.85";
  hash = "0mc906pabs138x9i3x22ki8rjs6v2h4bvgyigfarx47l4h2whpbs";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}