{ callPackage, fetchurl }:
let
  version = "1.96.54";
  hash = "0k8cz2h8hi8b76i4p8rmc7l6bm5p1l5fzy5nl5zwgx69wqih9qj3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.54/brave-browser-beta_1.96.54_amd64.deb";
}