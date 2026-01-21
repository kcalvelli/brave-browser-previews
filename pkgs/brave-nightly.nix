{ callPackage, fetchurl }:
let
  version = "1.88.46";
  hash = "1sq5q567wxgk6cymp3f1ip839z5wzc6s0kliwlhq2mxnzk7candx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}