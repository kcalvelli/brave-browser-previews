{ callPackage, fetchurl }:
let
  version = "1.93.65";
  hash = "10xgcimjmpaf2ycdrrj3kvw1w7234fysx06d2y21qbq456y8rmjd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.65/brave-origin-nightly_1.93.65_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}