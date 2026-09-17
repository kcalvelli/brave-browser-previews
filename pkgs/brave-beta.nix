{ callPackage, fetchurl }:
let
  version = "1.97.42";
  hash = "00ds3qriwzr260kdbz6r425p8b5xhmk6zilcragm7arxh6j9gqh9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.42/brave-browser-beta_1.97.42_amd64.deb";
}