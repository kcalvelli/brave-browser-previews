{ callPackage, fetchurl }:
let
  version = "1.87.170";
  hash = "0ksxjx5yf5dqz20bh6fhqkxva9y030shl9i8zlfx6d38iam7n4ky";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}