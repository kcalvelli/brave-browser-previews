{ callPackage, fetchurl }:
let
  version = "1.89.21";
  hash = "0h72acy71h3gwp73894njsz7a61i35nkhxrl91752bqkhrdfb94i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}