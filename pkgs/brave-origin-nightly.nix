{ callPackage, fetchurl }:
let
  version = "1.95.27";
  hash = "0h1l2rzg1pnxgv6vvj3y56az9gmr0m50h5b0avihx2q2pw2k1fz6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.27_amd64.deb";
}
