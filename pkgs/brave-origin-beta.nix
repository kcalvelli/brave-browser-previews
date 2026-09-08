{ callPackage, fetchurl }:
let
  version = "1.96.48";
  hash = "1z6a4xbg3fbg9ad8r4dzm81dk6hw75h3si8sfhxy0xxqjhni0pnk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.96.48_amd64.deb";
}
