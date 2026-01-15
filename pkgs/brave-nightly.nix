{ callPackage, fetchurl }:
let
  version = "1.88.28";
  hash = "1gq0xkj8y4ypzhs0h3gcvismjsdizj2dsixs9116k5w2845rc9bd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}