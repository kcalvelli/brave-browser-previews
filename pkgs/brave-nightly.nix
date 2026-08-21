{ callPackage, fetchurl }:
let
  version = "1.96.5";
  hash = "0nyx7ki1qljqia0z53l7pdhzr3szy2mrwf93kdbpgbswv5mgjla1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.5/brave-browser-nightly_1.96.5_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}