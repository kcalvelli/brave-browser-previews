{ callPackage, fetchurl }:
let
  version = "1.92.120";
  hash = "0c529jlxhwdflfybyxrcfnaf3yqq41gvkdlrayfn6jppnqvhshfc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.92.120_amd64.deb";
}
