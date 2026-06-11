{ callPackage, fetchurl }:
let
  version = "1.92.119";
  hash = "0k3yfd6yri575ahc3bm3k3hb36mv4hgmgyf92r7m3y41s3pslnjl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.119/brave-origin-beta_1.92.119_amd64.deb";
}