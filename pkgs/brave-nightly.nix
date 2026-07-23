{ callPackage, fetchurl }:
let
  version = "1.95.1";
  hash = "02fz2dr623pqas3bgcxbx2zi1p3ks3hzwvbwyyb3m3cczdz48h8c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.1/brave-browser-nightly_1.95.1_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}