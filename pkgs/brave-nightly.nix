{ callPackage, fetchurl }:
let
  version = "1.100.1";
  hash = "1f6lb5748r885swwd36nqyrm465vxnrjf3dyy3z18826ndpa13b5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.1/brave-origin-nightly_1.100.1_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}