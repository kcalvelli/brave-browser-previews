{ callPackage, fetchurl }:
let
  version = "1.94.101";
  hash = "1dh868pwdcgm7d076w52vr1c55ww1jhpn2f1sz11zd4da3bqfqwm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.101/brave-browser-beta_1.94.101_amd64.deb";
}