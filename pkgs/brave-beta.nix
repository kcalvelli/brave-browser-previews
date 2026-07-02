{ callPackage, fetchurl }:
let
  version = "1.93.109";
  hash = "1pcq1x05rxrffjy9nsv9j803ggsk79bzn6jdyvzjmi4fqz3dzj48";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.109/brave-browser-beta_1.93.109_amd64.deb";
}