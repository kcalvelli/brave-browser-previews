{ callPackage, fetchurl }:
let
  version = "1.90.70";
  hash = "06rf52jnmq0rfk95pnhirsvhv33v2hrp1x62hxxa9y0rg159s40d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}