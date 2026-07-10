{ callPackage, fetchurl }:
let
  version = "1.93.116";
  hash = "187dm19a0mkwnhp206hxag4hbc86l6wdm5378sdgj9q8dh1dhdg8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.116/brave-browser-beta_1.93.116_amd64.deb";
}