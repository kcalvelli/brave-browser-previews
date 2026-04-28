{ callPackage, fetchurl }:
let
  version = "1.91.120";
  hash = "0j6bdhlsnmfblpq6fb4ll89abwlr7ng3996yy3gzmzlliibyrz98";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.120/brave-origin-beta_1.91.120_amd64.deb";
}