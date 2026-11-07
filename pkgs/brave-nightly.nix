{ callPackage, fetchurl }:
let
  version = "1.101.34";
  hash = "0i2kh02vidknv51rpqssk893n2y48bccary49icblsbig547fpps";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.34/brave-browser-nightly_1.101.34_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}