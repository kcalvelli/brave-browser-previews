{ callPackage, fetchurl }:
let
  version = "1.90.38";
  hash = "07ar06849s9x0crgy95p4c0bknd1520cv6h0cr87rbsy5992hwfj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}