{ callPackage, fetchurl }:
let
  version = "1.90.51";
  hash = "1p6gl83b52fvwcx8pjjfyv0wcsqqnchb7zs50xqwac0prdxjdra5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}