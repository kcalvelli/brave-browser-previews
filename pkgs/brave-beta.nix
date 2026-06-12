{ callPackage, fetchurl }:
let
  version = "1.92.120";
  hash = "0c529jlxhwdflfybyxrcfnaf3yqq41gvkdlrayfn6jppnqvhshfc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.120/brave-origin-beta_1.92.120_amd64.deb";
}