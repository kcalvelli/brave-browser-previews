{ callPackage, fetchurl }:
let
  version = "1.89.25";
  hash = "04ksghh3kjkikfgx8lxh0g0dg4mi75x2zqpknxc7m599gwgjk3sn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}