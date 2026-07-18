{ callPackage, fetchurl }:
let
  version = "1.94.81";
  hash = "0ic75df9h75b6578452l64pj52kfdgjlfli0rnwrchsr04k3mj3p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.81/brave-browser-nightly_1.94.81_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}