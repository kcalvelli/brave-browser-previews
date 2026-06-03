{ callPackage, fetchurl }:
let
  version = "1.93.19";
  hash = "1jmjdmlagrrljdksrwh7h851q1xycqn1q4q8drdzw9xr83ij5g2l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.19_amd64.deb";
}
