{ callPackage, fetchurl }:
let
  version = "1.93.88";
  hash = "1l754da5f725jcc21cb5d8b45j2pgdwzikpkmdq2jmnhy0zyfvdi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.88/brave-origin-nightly_1.93.88_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}