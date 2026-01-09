{ callPackage, fetchurl }:
let
  version = "1.88.2";
  hash = "1h5nr15fkmywz73gxp7lqdc8vbyqwcdq46r6i1g1cf8248hxrx84";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}