{ callPackage, fetchurl }:
let
  version = "1.88.85";
  hash = "0c1s3wps09gmj6clxl13dx1zn8jcq68yrkf8zpx1p67ikxjcvr5q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}