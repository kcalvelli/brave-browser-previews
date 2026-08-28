{ callPackage, fetchurl }:
let
  version = "1.96.27";
  hash = "0x5xby0cdzlan327n1r4fl780hp63ashdkv756kf3cc6mplwry0g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.27/brave-browser-nightly_1.96.27_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}