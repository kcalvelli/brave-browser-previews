{ callPackage, fetchurl }:
let
  version = "1.89.11";
  hash = "13677lv9d7il19vvaav2wq2zdfvmx8s25j09m82nv7gcq95rygp2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}