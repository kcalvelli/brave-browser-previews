{ callPackage, fetchurl }:
let
  version = "1.94.19";
  hash = "1nvdds7xxnmwhg2h9livmrk4r8k9iiy6hwrr7px27ym0kw8y7bxy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.19/brave-browser-nightly_1.94.19_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}