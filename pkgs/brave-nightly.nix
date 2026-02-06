{ callPackage, fetchurl }:
let
  version = "1.89.5";
  hash = "1f8i1ln3xvmiihn4i10c7yxyjbgbklhijkc9vysl3y88bfq8ai2r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}