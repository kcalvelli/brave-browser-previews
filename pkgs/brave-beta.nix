{ callPackage, fetchurl }:
let
  version = "1.91.133";
  hash = "166asg8ayrmz1gpd7c2mjv3w4m6v0ljq48jwd7fya15lhch3s7a2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.133/brave-origin-beta_1.91.133_amd64.deb";
}