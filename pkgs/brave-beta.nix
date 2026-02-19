{ callPackage, fetchurl }:
let
  version = "1.88.111";
  hash = "1w4rz6kmdh14p8933skc8h5pna3q05231rb3h2b81q6nk0n2kaq8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}