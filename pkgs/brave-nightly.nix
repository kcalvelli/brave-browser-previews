{ callPackage, fetchurl }:
let
  version = "1.89.82";
  hash = "0gl8cbv147sza4kcrdb14w05v0xc6mdlyypmkjycy5ajpx3mqbh1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}