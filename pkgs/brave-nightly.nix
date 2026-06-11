{ callPackage, fetchurl }:
let
  version = "1.93.54";
  hash = "1ycb84bqy6zrpisl7x2lp53qx1j9any283y7sqw5qbr37df85mga";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.54/brave-origin-nightly_1.93.54_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}