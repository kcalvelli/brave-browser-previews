{ callPackage, fetchurl }:
let
  version = "1.88.96";
  hash = "0xf921wb60kx4b7vblfgxbrp3qq1na76fzy4l1mwjdfd582yyb0x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}