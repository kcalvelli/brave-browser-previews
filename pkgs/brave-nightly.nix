{ callPackage, fetchurl }:
let
  version = "1.96.13";
  hash = "1nc6k4w7v5b7hiryk4c58n7qhl432v6wm1pdf7bmcmfcfcjbyavz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.13/brave-browser-nightly_1.96.13_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}