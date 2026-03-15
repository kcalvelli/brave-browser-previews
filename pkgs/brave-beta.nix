{ callPackage, fetchurl }:
let
  version = "1.89.114";
  hash = "11vr0qs7zlq0qxpd56fkphiwmqb2gpi3ms7mnjfvfvzy9ahds524";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}