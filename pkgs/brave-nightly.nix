{ callPackage, fetchurl }:
let
  version = "1.93.100";
  hash = "1r7bcp5gfa3mvdyc9vmhry0s3z850g9k4khh1fv4ljhi0yqqhwpa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.100/brave-origin-nightly_1.93.100_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}