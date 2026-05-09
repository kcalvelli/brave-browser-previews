{ callPackage, fetchurl }:
let
  version = "1.91.145";
  hash = "0i7dfvj0nhil38i8gh9kwvi90yp6frh8ig3fkfa7r62jli26sari";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.145/brave-origin-beta_1.91.145_amd64.deb";
}