{ callPackage, fetchurl }:
let
  version = "1.101.56";
  hash = "1m3130i3y2iq3ckm41n6261p5v4dpb6z5rnxzcr8amdk01729dl1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.56/brave-origin-beta_1.101.56_amd64.deb";
}
