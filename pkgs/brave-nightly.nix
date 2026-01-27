{ callPackage, fetchurl }:
let
  version = "1.88.66";
  hash = "04s9mwyglhmvjrswwv10kkf1l2y0va852i6b8pgkixpkx055syl7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}