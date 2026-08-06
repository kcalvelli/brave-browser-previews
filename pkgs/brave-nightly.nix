{ callPackage, fetchurl }:
let
  version = "1.95.44";
  hash = "12vxx66pvb107ic0sz5k1c1v9qkjgy1h3i8lw4c17clg52zj48pr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.44/brave-browser-nightly_1.95.44_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}