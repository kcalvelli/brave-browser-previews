{ callPackage, fetchurl }:
let
  version = "1.99.45";
  hash = "03aja5bg9abas9jkgk85ymifajpj065pm2hlc2kfz7rm8swfs5n2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.45/brave-browser-beta_1.99.45_amd64.deb";
}