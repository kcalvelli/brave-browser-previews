{ callPackage, fetchurl }:
let
  version = "1.95.8";
  hash = "1dqvarzaxzcd9j5fdh811h0wa3hwdklmch542w5j37axdwjdgj4q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.8/brave-browser-nightly_1.95.8_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}