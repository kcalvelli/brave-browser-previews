{ callPackage, fetchurl }:
let
  version = "1.94.107";
  hash = "0cdnvi50r5b91yhqwwplcyzhmy7mcbp1ak5ax3halsm0q47yp4c2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.107/brave-browser-beta_1.94.107_amd64.deb";
}