{ callPackage, fetchurl }:
let
  version = "1.96.30";
  hash = "0ja65lv1iq7cb22sc9rjzrnga2h248b5m4gyxpmfl3si2imfp59b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.30/brave-browser-nightly_1.96.30_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}