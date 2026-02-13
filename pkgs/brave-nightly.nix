{ callPackage, fetchurl }:
let
  version = "1.89.28";
  hash = "09ndad26knx44yxnsjg0vvlh4gsclvhkfs79dr1i1gziqby9lj7f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}