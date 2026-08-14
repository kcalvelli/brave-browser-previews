{ callPackage, fetchurl }:
let
  version = "1.94.109";
  hash = "0dgdnaywmxw06is6il2dxwys8x6qv9yjnxl5p5bj4h7jk3pj7572";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.109/brave-browser-beta_1.94.109_amd64.deb";
}