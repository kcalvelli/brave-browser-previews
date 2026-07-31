{ callPackage, fetchurl }:
let
  version = "1.94.99";
  hash = "0c5sn3fhq139kk6ndsyznq9i16m4yar3yphkd9kj1ng9lxvjyk9m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.94.99_amd64.deb";
}
