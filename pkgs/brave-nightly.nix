{ callPackage, fetchurl }:
let
  version = "1.91.33";
  hash = "1mszn9c4msmav4vfnqn3c3gzyks7j06iyy609v1h42nzwjqxfdbk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}