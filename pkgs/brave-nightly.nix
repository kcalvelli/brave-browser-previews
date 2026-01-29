{ callPackage, fetchurl }:
let
  version = "1.88.75";
  hash = "050gv8zv63ggvqyyk018fqjnvmn8lh00f1s55x0pxsq3v12pdlw8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}