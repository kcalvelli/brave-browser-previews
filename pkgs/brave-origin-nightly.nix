{ callPackage, fetchurl }:
let
  version = "1.95.41";
  hash = "0j41b9mzf78n9pi6279kgbgqkwhx74gr7575113rapk3fip5q90x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.41_amd64.deb";
}
