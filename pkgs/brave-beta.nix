{ callPackage, fetchurl }:
let
  version = "1.86.132";
  hash = "04wj3dsy1mw036x6i18p42kmnysm8aqprq4kjzq5svc22grwddhj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}