{ callPackage, fetchurl }:
let
  version = "1.93.115";
  hash = "08g9b70d608p22sr3xh614w3jxmabvm3jlj1xhkdbi1bmv9qygyg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.115/brave-browser-beta_1.93.115_amd64.deb";
}