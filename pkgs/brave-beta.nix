{ callPackage, fetchurl }:
let
  version = "1.89.115";
  hash = "0fm9rjhvjybnmkqv9zvx25ffx6cdxi6479fnha0l5j8pgrr6q1k0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}