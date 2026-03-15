{ callPackage, fetchurl }:
let
  version = "1.90.32";
  hash = "07jwmyhqxhn6p96711lsgdsw153bxm6x9cil8mrp8cd1zwcjhx67";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}