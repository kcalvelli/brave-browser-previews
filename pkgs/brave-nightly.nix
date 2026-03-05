{ callPackage, fetchurl }:
let
  version = "1.90.2";
  hash = "0m4nb3z5x5g13rimky88dim3w0s9lql5vgy28zxnx0jmx33926hs";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}