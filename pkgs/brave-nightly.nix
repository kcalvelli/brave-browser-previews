{ callPackage, fetchurl }:
let
  version = "1.89.89";
  hash = "0x2ki8n26miyx9di39xpbx6k2f8bv2y1gkcs73rz29cl7s8mcvrb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}