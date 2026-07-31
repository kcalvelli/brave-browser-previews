{ callPackage, fetchurl }:
let
  version = "1.94.99";
  hash = "0smy0l49i1irggm8ns5ik9mq5ppxqkp7jdv7svjr15j5l3a2j425";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.99/brave-browser-beta_1.94.99_amd64.deb";
}