{ callPackage, fetchurl }:
let
  version = "1.101.11";
  hash = "0gxp79rrys0zpbgxsxgpb3w5a2qfd4jip8k883z256vnnhj3bdyn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.11/brave-browser-nightly_1.101.11_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}