{ callPackage, fetchurl }:
let
  version = "1.94.65";
  hash = "0b5y0s14znx2skcz2mpcdvmgnzczrcapf5lzga5m3vpvysahw6vd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.65/brave-browser-nightly_1.94.65_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}