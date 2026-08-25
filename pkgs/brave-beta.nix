{ callPackage, fetchurl }:
let
  version = "1.95.89";
  hash = "10daz9a0qfa7jibnjy3y560byhnn7kgp6r0142xmzx5c5qwg03py";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.89/brave-browser-beta_1.95.89_amd64.deb";
}