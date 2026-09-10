{ callPackage, fetchurl }:
let
  version = "1.96.50";
  hash = "033apy5y91a1ydv2y7q44ys69k2jc405mnankmpwrv30isq9mi3h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.50/brave-browser-beta_1.96.50_amd64.deb";
}