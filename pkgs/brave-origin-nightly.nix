{ callPackage, fetchurl }:
let
  version = "1.92.24";
  hash = "1b6ca2vjj20fkx78yj7s9ilmg9pawijsgzanx5r6y1mrwm87hzs1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.24_amd64.deb";
}
