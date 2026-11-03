{ callPackage, fetchurl }:
let
  version = "1.101.16";
  hash = "0afiip30n97rmrzgjihl5x7jxmr5yw9w1apjd3abpf8whqswyr1f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.16/brave-browser-nightly_1.101.16_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}