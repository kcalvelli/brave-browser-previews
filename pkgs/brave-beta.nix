{ callPackage, fetchurl }:
let
  version = "1.86.121";
  hash = "0wpinpkywj3rd0ps5jm1csk301hp8knx1yhqdh12w2mk7anb3yid";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}