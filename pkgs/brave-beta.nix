{ callPackage, fetchurl }:
let
  version = "1.98.56";
  hash = "0m2ykkl1ffzgzybwf81lqc7v1l9qhnh6rgql9zj5zq0am5xwxri7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.56/brave-browser-beta_1.98.56_amd64.deb";
}