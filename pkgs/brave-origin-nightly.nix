{ callPackage, fetchurl }:
let
  version = "1.102.9";
  hash = "1qlw500x72mla40354hbigz9jg8xbh3i6nm9jbak8y8lp66m1bxh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.9/brave-origin-nightly_1.102.9_amd64.deb";
}
