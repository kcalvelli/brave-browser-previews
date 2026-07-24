{ callPackage, fetchurl }:
let
  version = "1.94.94";
  hash = "18zxcgy76fjaff4cd3lgb6wmxmyscspwvn4z0cdsf0vym0b394dc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.94/brave-browser-beta_1.94.94_amd64.deb";
}