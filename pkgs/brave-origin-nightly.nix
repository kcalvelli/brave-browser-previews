{ callPackage, fetchurl }:
let
  version = "1.102.28";
  hash = "0d91ix0fpf3kshwi006257pmprjv3gjzb1v0sas53r0qf044xicn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.28/brave-origin-nightly_1.102.28_amd64.deb";
}
