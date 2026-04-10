{ callPackage, fetchurl }:
let
  version = "1.91.30";
  hash = "1pzfaiyc5sf1si7vaz7a6c4vkacmzvdcg62kcssrs90q42p48xmr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}