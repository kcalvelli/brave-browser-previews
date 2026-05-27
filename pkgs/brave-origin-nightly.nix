{ callPackage, fetchurl }:
let
  version = "1.92.100";
  hash = "0sdpvli3gslq48w5s8fn0q2ahf7clpnn5jwxb1ngsmam2ylyizn2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.100_amd64.deb";
}
