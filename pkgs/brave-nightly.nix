{ callPackage, fetchurl }:
let
  version = "1.88.36";
  hash = "1cwy0y2qjj2a6i6a49aqr7lrn9j7p3lhij6xrhdnmxvim08gjzcq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}