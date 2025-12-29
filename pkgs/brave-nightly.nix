{ callPackage, fetchurl }:
let
  version = "1.87.122";
  hash = "1517iswsxrr099djcjxyic9lkyziqjsxlddwh8mp7r7cpwjdzr3r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}