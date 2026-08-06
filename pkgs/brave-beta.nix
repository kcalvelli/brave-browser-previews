{ callPackage, fetchurl }:
let
  version = "1.94.103";
  hash = "1wncw63c20vc3rwfzragyjj787y95nmlq56pgjkjwyhqiw4465hv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.103/brave-browser-beta_1.94.103_amd64.deb";
}