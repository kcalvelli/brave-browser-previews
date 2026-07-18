{ callPackage, fetchurl }:
let
  version = "1.93.121";
  hash = "0wpy4il95sgfppxnm6ydhirli8wq4zrdmqx1005gxvnki21yky9x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.121/brave-browser-beta_1.93.121_amd64.deb";
}