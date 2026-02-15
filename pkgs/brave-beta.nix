{ callPackage, fetchurl }:
let
  version = "1.88.108";
  hash = "09wyv041k1s2ks5lgqvy8rw6z5p80sc6gqqfc8j8n227j63ca9ca";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}