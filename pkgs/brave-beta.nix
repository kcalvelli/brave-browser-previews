{ callPackage, fetchurl }:
let
  version = "1.99.48";
  hash = "0y4275qwzw303z84x33plxh61485r99n7n3n0nw7hgy4m2ayrpaa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.48/brave-browser-beta_1.99.48_amd64.deb";
}