{ callPackage, fetchurl }:
let
  version = "1.102.17";
  hash = "1n4qzb1prwbxjp39a9nxf86ci8wsx0ni78jmb2ag1ahq75sl7ax9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.17/brave-origin-nightly_1.102.17_amd64.deb";
}
