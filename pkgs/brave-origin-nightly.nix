{ callPackage, fetchurl }:
let
  version = "1.101.8";
  hash = "0qgwjwiwv8v2fdcq9p0z9ig3icz18byan46m9h5av9cn5az16g45";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.101.8_amd64.deb";
}
