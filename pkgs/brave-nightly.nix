{ callPackage, fetchurl }:
let
  version = "1.87.96";
  hash = "1153lgdx7l3hfkdfgy0di19g2dkqa4k8gi692wr7lwr3rfc7jz3f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}