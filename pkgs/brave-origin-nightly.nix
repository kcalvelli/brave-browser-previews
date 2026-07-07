{ callPackage, fetchurl }:
let
  version = "1.94.40";
  hash = "00yxx186lsaanqxyqq957sng119by4cp2vhp32n233z72qb9sk73";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.40_amd64.deb";
}
