{ callPackage, fetchurl }:
let
  version = "1.91.157";
  hash = "05s7iiylids321l5sfjnacgf270yab6pvdid4nb85vam6a2ybilj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.157/brave-browser-beta_1.91.157_amd64.deb";
}