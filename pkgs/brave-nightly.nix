{ callPackage, fetchurl }:
let
  version = "1.90.89";
  hash = "0si7aa6x753r9ny676ldbmr86d9yl5qba1kcr6pchd03i59dxv05";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}