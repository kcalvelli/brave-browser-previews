{ callPackage, fetchurl }:
let
  version = "1.96.53";
  hash = "08m6var8c56mm33fppbjw8m0zm34pms4mgqcis9qdpfrn1gzy4aa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.96.53_amd64.deb";
}
