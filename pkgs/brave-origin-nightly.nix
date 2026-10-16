{ callPackage, fetchurl }:
let
  version = "1.100.2";
  hash = "1jcsj9j0gs0i4rkkckhn64057hn3bxh88wn4z703cgz6db3kphya";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.100.2_amd64.deb";
}
