{ callPackage, fetchurl }:
let
  version = "1.101.43";
  hash = "0cw1nfarlc3npaz1s3rk7mvcn2h1wmfa1mzx3b9p5g5npg55pb3k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.43/brave-browser-nightly_1.101.43_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}