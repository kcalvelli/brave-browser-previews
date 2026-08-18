{ callPackage, fetchurl }:
let
  version = "1.94.111";
  hash = "1g91qjjnikqbkkffp3zgrigp9xvfbzl9bdl1xsb4ppihpmm8sg55";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.111/brave-browser-beta_1.94.111_amd64.deb";
}