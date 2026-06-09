{ callPackage, fetchurl }:
let
  version = "1.93.39";
  hash = "1czizh0mk3xzfk0lsdr23rbpjplb0bhwyb9jcgpd4arhkqn1i85k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.39_amd64.deb";
}
