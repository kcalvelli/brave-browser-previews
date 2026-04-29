{ callPackage, fetchurl }:
let
  version = "1.91.125";
  hash = "07dwk9ph1wvwxw1za6jzbcvycp1rj8d6k02nzbbh7wp6kb1sxfjc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.125/brave-browser-nightly_1.91.125_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}