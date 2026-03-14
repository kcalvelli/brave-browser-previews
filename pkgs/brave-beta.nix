{ callPackage, fetchurl }:
let
  version = "1.89.113";
  hash = "1k5rcc4154j0cjdxzzi5023vda4w4ssdlnd2skx8dslfd99q95z7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}