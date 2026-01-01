{ callPackage, fetchurl }:
let
  version = "1.87.134";
  hash = "0j4yz0fixpw2fyfk64msw5wac63mdb14530c82jq0kcv6sm213q7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}