{ callPackage, fetchurl }:
let
  version = "1.91.153";
  hash = "0kvyzy8d6sw9msbh22019kzn5l7q5nxvdma0mszzi6mnxrjkgzfp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.153/brave-browser-beta_1.91.153_amd64.deb";
}