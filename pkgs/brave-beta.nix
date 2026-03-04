{ callPackage, fetchurl }:
let
  version = "1.88.120";
  hash = "1ildn4n1snslwxvw0risiv7y8hz7gdzvy20k6jj5scnycdgp9mp0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}