{ callPackage, fetchurl }:
let
  version = "1.88.113";
  hash = "10aq9yym2f17qbbb6avd7a8xwyxcw7qwsx8xd2vrp2pyig0mcdn0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}