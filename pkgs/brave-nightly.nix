{ callPackage, fetchurl }:
let
  version = "1.88.13";
  hash = "1ykwrzcw65fkfz88gppi6cjgisqxc4x0sgh5ij76gvnbd99093yz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}