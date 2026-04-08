{ callPackage, fetchurl }:
let
  version = "1.90.99";
  hash = "0airdfd3s9xgdzql5hvxw3j38yk5zx2bdj683bhf9iv8kgzl4kp7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}