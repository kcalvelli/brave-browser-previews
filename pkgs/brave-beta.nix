{ callPackage, fetchurl }:
let
  version = "1.92.116";
  hash = "0m8rmivrn7x1vfqq9nx8vj1c9qd08p1lshrvq3d2ilk4x7c487az";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.116/brave-browser-beta_1.92.116_amd64.deb";
}