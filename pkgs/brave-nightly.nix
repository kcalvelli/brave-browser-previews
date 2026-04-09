{ callPackage, fetchurl }:
let
  version = "1.91.27";
  hash = "05h9yqbj7dgj333m4359nfzhl4x0n3102sq5s4p7lahji9flq7vq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}