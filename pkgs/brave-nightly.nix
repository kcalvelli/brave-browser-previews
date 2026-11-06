{ callPackage, fetchurl }:
let
  version = "1.101.31";
  hash = "15vdyqywcacgh8dsl0y6g67z5n8assi9j208za3dnrfgik3m9yhm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.31/brave-browser-nightly_1.101.31_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}