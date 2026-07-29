{ callPackage, fetchurl }:
let
  version = "1.94.97";
  hash = "026vhkfyqdzdy8p7q3pa2p620gngwzk7gr3py8l20zmlmn03mdsh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.94.97_amd64.deb";
}
