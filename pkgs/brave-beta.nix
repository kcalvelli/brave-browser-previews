{ callPackage, fetchurl }:
let
  version = "1.101.52";
  hash = "05lfd604h22mc2aj6ixsgyqnb7xxjvipydgknqi0zdq8ky11kw9n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.52/brave-browser-beta_1.101.52_amd64.deb";
}