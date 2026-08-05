{ callPackage, fetchurl }:
let
  version = "1.95.40";
  hash = "14gkiqb364x70rxfz67askhd2afl5yc9bfajfa37rw4a3axq431i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.40/brave-browser-nightly_1.95.40_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}