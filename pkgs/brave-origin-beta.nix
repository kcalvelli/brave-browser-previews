{ callPackage, fetchurl }:
let
  version = "1.92.117";
  hash = "11zhn6lb7jngswr79admiglq2x6p68prj6d3jc45188xks0n1dkg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.92.117_amd64.deb";
}
