{ callPackage, fetchurl }:
let
  version = "1.92.113";
  hash = "0pwji4xai4ssdfa65fmk5d4s8ql2fqwyvb6zwd9nlkwmnm8aykfi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.113/brave-browser-beta_1.92.113_amd64.deb";
}