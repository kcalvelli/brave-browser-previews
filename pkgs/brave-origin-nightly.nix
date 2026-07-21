{ callPackage, fetchurl }:
let
  version = "1.94.83";
  hash = "1sv4rlw16p4mcg71hs7wz2nbsflv5g13m7zljdwg18x2vzxnadzr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.83_amd64.deb";
}
