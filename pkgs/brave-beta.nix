{ callPackage, fetchurl }:
let
  version = "1.95.96";
  hash = "0wyj8ndbf3zmv45v7ff8bi5gzj3qg29g39cfhi7nggx7ylcw21xy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.96/brave-browser-beta_1.95.96_amd64.deb";
}