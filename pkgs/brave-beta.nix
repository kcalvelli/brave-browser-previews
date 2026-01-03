{ callPackage, fetchurl }:
let
  version = "1.86.129";
  hash = "00nlm1rhmpwh3agd3dr33zzfasxclcnsq4chkx116qyx5iq0z30y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}