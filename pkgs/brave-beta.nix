{ callPackage, fetchurl }:
let
  version = "1.89.111";
  hash = "0cif25vqqxk6fzcj8y39cc14nwyscjrvi63sxd8lsqfr8i52w12w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}