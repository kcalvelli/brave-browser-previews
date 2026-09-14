{ callPackage, fetchurl }:
let
  version = "1.97.30";
  hash = "1qy4mkm11zajq00920b54irj7bwb8251n5fwj3f8d8l8z2psw2ck";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.30/brave-browser-nightly_1.97.30_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}