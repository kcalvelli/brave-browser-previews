{ callPackage, fetchurl }:
let
  version = "1.88.122";
  hash = "05fhpf0w9lqdrsj2wriv5b5pqbp5fqd5i0r5lkrwvb18kjk5i4dl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}