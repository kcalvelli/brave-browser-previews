{ callPackage, fetchurl }:
let
  version = "1.88.32";
  hash = "13y2g0f08ikkwz5i2l1phrlxrw1y9gy65rz56nshfk9swq7chyip";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}