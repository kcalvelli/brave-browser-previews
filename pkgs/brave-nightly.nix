{ callPackage, fetchurl }:
let
  version = "1.96.23";
  hash = "10xdl5fbk3fcn6xscw54cx54v3hrsq6s79nax324caldy6w2r031";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.23/brave-browser-nightly_1.96.23_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}