{ callPackage, fetchurl }:
let
  version = "1.88.112";
  hash = "1104im6d26rbik8ccgvk1nn9kp15y5mwrbp26mly8qhj8kcmnk7y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}