{ callPackage, fetchurl }:
let
  version = "1.95.6";
  hash = "11890dnmc61bdbcdfhvbdka48iknlfgcfrabyxnl77asaxkwz12v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.6_amd64.deb";
}
