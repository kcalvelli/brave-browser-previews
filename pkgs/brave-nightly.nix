{ callPackage, fetchurl }:
let
  version = "1.100.16";
  hash = "1csnjyg5h9zrfcr48h5p7ahh1fw2bvcivw87cq02pbwdmxgx8sms";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.100.16/brave-browser-nightly_1.100.16_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}