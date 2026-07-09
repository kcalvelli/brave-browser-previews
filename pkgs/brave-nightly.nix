{ callPackage, fetchurl }:
let
  version = "1.94.51";
  hash = "1knyyfigb7h03f7xy0s8s9f9zwr3wqsrhg6rrz4qsqmwmvifvr8f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.51/brave-browser-nightly_1.94.51_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}