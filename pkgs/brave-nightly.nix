{ callPackage, fetchurl }:
let
  version = "1.95.13";
  hash = "18c34cny8cgqbsx9ypry7vf8v5hm3cb2frspcxcyq585fvxpc8rj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.13/brave-browser-nightly_1.95.13_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}