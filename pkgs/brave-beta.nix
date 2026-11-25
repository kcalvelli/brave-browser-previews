{ callPackage, fetchurl }:
let
  version = "1.101.56";
  hash = "0ca3wk623shhi2l25rzrc36d8191g2l7l4im9vvxbb3xhy7qjmv4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.56/brave-browser-beta_1.101.56_amd64.deb";
}