{ callPackage, fetchurl }:
let
  version = "1.89.62";
  hash = "09jh2xgbzaq7iar7m5dm2rzs17p5d2vvj0fg4d48vrzjigyw037g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}