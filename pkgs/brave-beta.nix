{ callPackage, fetchurl }:
let
  version = "1.100.52";
  hash = "1z6x0s4jbb5psdxn3a0436fl2wysxsmmpcna81rcx9ls89bzh41z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.52/brave-browser-beta_1.100.52_amd64.deb";
}