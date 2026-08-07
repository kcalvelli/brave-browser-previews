{ callPackage, fetchurl }:
let
  version = "1.95.45";
  hash = "0hqh5k7q0lf1kqb3r7n6j99x3mczc7951rww0hql57ikm5iyq91y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.45_amd64.deb";
}
