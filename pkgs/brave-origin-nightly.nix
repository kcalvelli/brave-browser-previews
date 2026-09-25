{ callPackage, fetchurl }:
let
  version = "1.98.28";
  hash = "1imzrk0jc8crk5b69wx3xc39bh78dq63nxdjhfxylbzqlrz8xpyi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.98.28_amd64.deb";
}
