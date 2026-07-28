{ callPackage, fetchurl }:
let
  version = "1.95.10";
  hash = "1is4wrzrlnd7w63vzsp8lfys7v3v2q0lcrjbsbicwjbxy3a6mda2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.10_amd64.deb";
}
