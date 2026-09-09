{ callPackage, fetchurl }:
let
  version = "1.96.49";
  hash = "1qrrlqj7bvy6mzbq24969vr4whgq6y4zg9q29wllw70swd84yjjl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.49/brave-browser-beta_1.96.49_amd64.deb";
}