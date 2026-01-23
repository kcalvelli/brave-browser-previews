{ callPackage, fetchurl }:
let
  version = "1.88.56";
  hash = "0370jyxvai6q8yrql2ihn89yipy3sr8wp733pyx2i52dzsf8wi3g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}