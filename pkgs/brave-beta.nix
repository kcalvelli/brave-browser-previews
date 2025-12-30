{ callPackage, fetchurl }:
let
  version = "1.86.125";
  hash = "0k97b5digs1v91f7r4i4ih8lw99gpcpyiairy0ldbx0jnj9qsg7g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}