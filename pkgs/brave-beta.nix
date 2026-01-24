{ callPackage, fetchurl }:
let
  version = "1.87.174";
  hash = "1v59nzd6gqzkd58hdzxn49k03iq0vzjndpdr1i273bf9q6l9qnlg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}