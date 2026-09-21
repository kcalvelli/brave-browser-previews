{ callPackage, fetchurl }:
let
  version = "1.97.44";
  hash = "1qqd93ps88yk6mmrb28dmpxbbr8mw2913bprwh6xcfxiszh278xg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.44/brave-browser-beta_1.97.44_amd64.deb";
}