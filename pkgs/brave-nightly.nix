{ callPackage, fetchurl }:
let
  version = "1.94.78";
  hash = "0ckypxkaxqlvkm0937044s5vnmy7nfn9r3c73p8k1vdb366nxbn2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.78/brave-browser-nightly_1.94.78_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}