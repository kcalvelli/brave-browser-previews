{ callPackage, fetchurl }:
let
  version = "1.98.33";
  hash = "0hlmbjrlqwz2advznl5pf2f6h1a00997xppmvn33p5f33zzkrwf1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.33/brave-browser-nightly_1.98.33_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}