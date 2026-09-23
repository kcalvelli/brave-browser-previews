{ callPackage, fetchurl }:
let
  version = "1.98.21";
  hash = "01jj3q58rf8pjlmz441l1l854kb2fayqrz3mvzy0fv5jgn9hm8mv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.21/brave-browser-nightly_1.98.21_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}