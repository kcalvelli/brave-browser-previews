{ callPackage, fetchurl }:
let
  version = "1.89.1";
  hash = "0f6lffmmczfw9ldxxmvigbml7hyg4nf8xwy04znfvfl50p9hnybj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}