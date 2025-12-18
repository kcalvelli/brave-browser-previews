{ callPackage, fetchurl }:
let
  version = "1.87.93";
  hash = "1c11nz4rlr5nazbjcp1w8jdysma1ka4l50jgxpfqs7wbgkvghw24";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}