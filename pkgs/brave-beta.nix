{ callPackage, fetchurl }:
let
  version = "1.95.93";
  hash = "1cfj16lcinvsrvn9bshy3zfhl58h0wcd0zx8mhxx433igq4d9qz1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.93/brave-browser-beta_1.95.93_amd64.deb";
}