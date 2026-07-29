{ callPackage, fetchurl }:
let
  version = "1.95.17";
  hash = "161jbm8dbgjzds3alp3hwx6ywhzfjy0arv690l2zpna9ccn10yha";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.17/brave-browser-nightly_1.95.17_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}