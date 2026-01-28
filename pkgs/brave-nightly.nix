{ callPackage, fetchurl }:
let
  version = "1.88.70";
  hash = "06gj5anj9b7fl3jhh7qcr8kygxxk84qh2m02gm37isfnydxz8f9l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}