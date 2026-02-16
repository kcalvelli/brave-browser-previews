{ callPackage, fetchurl }:
let
  version = "1.89.40";
  hash = "0gz1zbhax1yay7xxc17ww6j0j0m6rcc3l2gxl452jkcp3pcq84x2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}