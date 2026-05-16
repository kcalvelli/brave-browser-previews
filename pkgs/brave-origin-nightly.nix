{ callPackage, fetchurl }:
let
  version = "1.92.65";
  hash = "0l42pikfi2lj1ynk6mzdnb0igv1gvz5j3fm872bvdqk64ijgr8y5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.65_amd64.deb";
}
