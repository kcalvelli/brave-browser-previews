{ callPackage, fetchurl }:
let
  version = "1.90.15";
  hash = "1acd7a8l3bz6m90amsqapy39vih3894bz4bmk5rkwsj2fzl3cm1p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}