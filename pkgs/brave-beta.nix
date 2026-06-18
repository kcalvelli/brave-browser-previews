{ callPackage, fetchurl }:
let
  version = "1.92.124";
  hash = "15l9klhfmf5r8wg903hf4cn5frksc3dwxy3fhwza72s0wrw2k0k5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.124/brave-origin-beta_1.92.124_amd64.deb";
}