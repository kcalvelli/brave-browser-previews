{ callPackage, fetchurl }:
let
  version = "1.93.122";
  hash = "0m5687zlwz9p1dx0m4sjssxfh7jddaaw48rjr5vaqi6jz2gdzhh1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.122/brave-browser-beta_1.93.122_amd64.deb";
}