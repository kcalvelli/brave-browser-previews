{ callPackage, fetchurl }:
let
  version = "1.87.158";
  hash = "02sxvp8i0wwjvp7p8164izqrdc62hip7b68ksq23ap1pchvab515";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}