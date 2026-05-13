{ callPackage, fetchurl }:
let
  version = "1.91.149";
  hash = "184iicc2jd8g5k6wxa7kv9mr2fnwyc9l2pcl99lbp6zjgi09ysir";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.149/brave-origin-beta_1.91.149_amd64.deb";
}