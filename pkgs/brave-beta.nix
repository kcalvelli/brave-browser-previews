{ callPackage, fetchurl }:
let
  version = "1.94.98";
  hash = "0d6wkzw4grv8lf5d7z0xk6iiwfp6r27wl3jcpgh9z0dk27j1796a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.98/brave-browser-beta_1.94.98_amd64.deb";
}