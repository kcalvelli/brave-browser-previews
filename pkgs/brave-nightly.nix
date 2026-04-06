{ callPackage, fetchurl }:
let
  version = "1.91.11";
  hash = "0515s1wc3xxzd7496nbnwgrcb24ngwkmpp4q61xv55bz101pw7gm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}