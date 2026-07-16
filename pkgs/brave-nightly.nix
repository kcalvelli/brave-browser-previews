{ callPackage, fetchurl }:
let
  version = "1.94.73";
  hash = "034g8bsbms7dbchsyn2h41gi8vwbqnwaxad0s6x6nd2rq2v6s9jx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.73/brave-browser-nightly_1.94.73_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}