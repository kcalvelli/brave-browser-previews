{ callPackage, fetchurl }:
let
  version = "1.100.44";
  hash = "1j1q1bcyyqvnxykz1v387wndj0w1db8cn279d66hzdm17gh8jr7r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.44/brave-browser-beta_1.100.44_amd64.deb";
}