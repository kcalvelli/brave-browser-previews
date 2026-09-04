{ callPackage, fetchurl }:
let
  version = "1.96.46";
  hash = "1amkkqy2fkc8lawighb5sxryypyzjl69hqpqrjls2ila2i60kg9i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.46/brave-browser-beta_1.96.46_amd64.deb";
}