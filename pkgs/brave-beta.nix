{ callPackage, fetchurl }:
let
  version = "1.86.131";
  hash = "1kfja51z2jl21smv9a3zych9pf2pihfb5s7p0j4p4via3wlgc4l6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}