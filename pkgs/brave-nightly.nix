{ callPackage, fetchurl }:
let
  version = "1.95.29";
  hash = "04lj56zx2aar5djc1d04nnry3yv07h9aja81jsp5mx5rnm7fahgn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.29/brave-browser-nightly_1.95.29_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}