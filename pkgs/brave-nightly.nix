{ callPackage, fetchurl }:
let
  version = "1.102.45";
  hash = "1x0fmb0hq9gfafb5cv11ndvbii0mh586cj52jbm8q45r210pcyak";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.45/brave-browser-nightly_1.102.45_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}