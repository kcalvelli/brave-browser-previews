{ callPackage, fetchurl }:
let
  version = "1.88.104";
  hash = "0v4n36ibbvmn40qq3698nm281q60r13wnmws75jlk827419gzy8y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}