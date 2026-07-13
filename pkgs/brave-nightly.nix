{ callPackage, fetchurl }:
let
  version = "1.94.61";
  hash = "13vbqyib7p7yaa5nrjb810a7zcwmrkm0y0sshs181x1jf4m32v65";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.61/brave-browser-nightly_1.94.61_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}