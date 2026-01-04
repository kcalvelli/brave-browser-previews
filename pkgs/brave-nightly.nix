{ callPackage, fetchurl }:
let
  version = "1.87.142";
  hash = "184zwl2bm8zy3kk6l69063rms3vvc1ravrzi4dj61zl37lfr6j80";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}