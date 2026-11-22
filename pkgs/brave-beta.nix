{ callPackage, fetchurl }:
let
  version = "1.101.53";
  hash = "1ixqx2lyja1ridw60j9qxrnz3v0j20z37ml7kndyf542kng1j7kw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.53/brave-browser-beta_1.101.53_amd64.deb";
}