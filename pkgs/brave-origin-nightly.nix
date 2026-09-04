{ callPackage, fetchurl }:
let
  version = "1.96.44";
  hash = "0wz59wzn6w5rkfhgb0nqwlby2q2ma50aydprj926805x0cricvm8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.96.44_amd64.deb";
}
