{ callPackage, fetchurl }:
let
  version = "1.88.114";
  hash = "0j4iz9nzc7wxsrwai06fylj5vx99ign0wj4pb2sfckymajdmg6kp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}