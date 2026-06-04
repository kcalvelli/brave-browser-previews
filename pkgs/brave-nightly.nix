{ callPackage, fetchurl }:
let
  version = "1.93.27";
  hash = "0f71irspcr4wv9vlb5zzpajvqfz58dzqhxb8wvs8a2j3dpl2grg3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.27/brave-browser-nightly_1.93.27_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}