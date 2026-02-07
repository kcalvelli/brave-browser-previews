{ callPackage, fetchurl }:
let
  version = "1.89.8";
  hash = "06sk9xzkw16vs2ncm3gaawanwylwczdvgfgzf67d5mz5bhfap7mk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}