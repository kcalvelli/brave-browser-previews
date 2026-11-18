{ callPackage, fetchurl }:
let
  version = "1.101.51";
  hash = "17c4xp2qzxaj530sf3wgnxbvp0s3n27srqx0b9b6aiszzq9bkh20";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.51/brave-browser-beta_1.101.51_amd64.deb";
}