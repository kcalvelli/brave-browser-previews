{ callPackage, fetchurl }:
let
  version = "1.95.53";
  hash = "0n6x9ix5ppp8pppfn0fxpllbiwndjya739xmg37w30p2y4pcc8dc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.53/brave-browser-nightly_1.95.53_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}