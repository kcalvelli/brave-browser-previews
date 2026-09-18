{ callPackage, fetchurl }:
let
  version = "1.98.8";
  hash = "048ahrd451p7x1r5j7x8d79l4yi416yw75si8jqysxmmk14v0bd9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.8/brave-browser-nightly_1.98.8_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}