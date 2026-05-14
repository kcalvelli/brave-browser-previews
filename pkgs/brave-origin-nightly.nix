{ callPackage, fetchurl }:
let
  version = "1.92.56";
  hash = "1ygdrgi25jsk7s22gh4lk86g182djki75f2m94yv4dwdsh137c1g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.56_amd64.deb";
}
