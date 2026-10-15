{ callPackage, fetchurl }:
let
  version = "1.99.44";
  hash = "0q450c9clwy5dv0cr7ff470zmjnz6jc0gsksi6ra1d0216jca1pz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.99.44_amd64.deb";
}
