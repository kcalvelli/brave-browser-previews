{ callPackage, fetchurl }:
let
  version = "1.99.44";
  hash = "06b07agid8kkxlxd8n372h64vawghpz6iacmv83k73ic684ns68n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.44/brave-browser-beta_1.99.44_amd64.deb";
}