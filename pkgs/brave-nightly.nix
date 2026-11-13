{ callPackage, fetchurl }:
let
  version = "1.102.5";
  hash = "1pi8c4mfdkdn89nq07lflap5g3djhzai1sy5p4f4p4l5d9wb84hw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.5/brave-browser-nightly_1.102.5_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}