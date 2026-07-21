{ callPackage, fetchurl }:
let
  version = "1.94.86";
  hash = "1wg23fs4mzg3q05phc7r7076janq2dbn4lpn9q0y04fm597vxqvi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.86/brave-browser-nightly_1.94.86_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}