{ callPackage, fetchurl }:
let
  version = "1.95.22";
  hash = "08pya6660s0bbgsxf97a519wm5n3bvi8bi7544j23vf6fsnxkl3r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.22/brave-browser-nightly_1.95.22_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}