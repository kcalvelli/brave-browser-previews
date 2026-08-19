{ callPackage, fetchurl }:
let
  version = "1.94.112";
  hash = "02is6wm3c1w9bx624vj70ng1w566jhsfb7738hdkxpql6bfwfv8y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.112/brave-browser-beta_1.94.112_amd64.deb";
}