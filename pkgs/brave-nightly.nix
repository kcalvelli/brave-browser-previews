{ callPackage, fetchurl }:
let
  version = "1.95.36";
  hash = "0cnyqlhpn2cdb2i5n27aqx3fzx2rlf8a9lwj54lchyjd2n5qnh8d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.36/brave-browser-nightly_1.95.36_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}