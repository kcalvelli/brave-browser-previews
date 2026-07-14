{ callPackage, fetchurl }:
let
  version = "1.93.117";
  hash = "19k4lg0jv2g3amk4y1r41ijxy1v7slwp81cqq2j4c5vpnpjdxyqn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.117/brave-browser-beta_1.93.117_amd64.deb";
}