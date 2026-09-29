{ callPackage, fetchurl }:
let
  version = "1.97.51";
  hash = "0zihxfnjk9z1ggbp9bxqflz5brkadzb46ywi78ba9r1zy6mgs4kx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.51/brave-browser-beta_1.97.51_amd64.deb";
}