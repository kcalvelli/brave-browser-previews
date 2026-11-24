{ callPackage, fetchurl }:
let
  version = "1.101.55";
  hash = "1l5phlbd3dl8xzp2glmwxxms24g332yg9cjxf9hkz8hzdrv32061";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.55/brave-browser-beta_1.101.55_amd64.deb";
}