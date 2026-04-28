{ callPackage, fetchurl }:
let
  version = "1.91.121";
  hash = "1rzwa5wfscahq0yhggjs61fgrg5qsfcbinn71dkgrcjn3p1bngsm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.121/brave-browser-nightly_1.91.121_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}