{ callPackage, fetchurl }:
let
  version = "1.98.22";
  hash = "0wjz9mp9cm8max91ry9fcgld7wx62r222q78ydihp437j82inkg3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.98.22_amd64.deb";
}
