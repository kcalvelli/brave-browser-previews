{ callPackage, fetchurl }:
let
  version = "1.87.143";
  hash = "1zwd85xv77fkbwdi5vfa6lw2pyra1wg1db327hmm0kcqxh2gn3fl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}