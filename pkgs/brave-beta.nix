{ callPackage, fetchurl }:
let
  version = "1.96.53";
  hash = "00cp1y5iapc1m0yshksj9jixd30sc9ysbjxrgbd62lgxafxr6fbw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.53/brave-browser-beta_1.96.53_amd64.deb";
}