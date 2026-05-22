{ callPackage, fetchurl }:
let
  version = "1.91.158";
  hash = "147j8kaj81brfvwbkzq76xrnsbaqxcbfi1sk9if4q9zcl7472g09";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.158/brave-browser-beta_1.91.158_amd64.deb";
}