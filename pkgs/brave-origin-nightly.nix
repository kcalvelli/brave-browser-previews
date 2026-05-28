{ callPackage, fetchurl }:
let
  version = "1.93.1";
  hash = "1pqam0fa7wq872simabv8jq7qj2wzfcq70nqsriivr38gpqcr1h5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.1_amd64.deb";
}
