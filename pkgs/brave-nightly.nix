{ callPackage, fetchurl }:
let
  version = "1.98.11";
  hash = "11l9rzjvadj4if9mb5zp9i8cswvfy471yz9imfhb8gxa7bv1kl0a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.98.11/brave-browser-nightly_1.98.11_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}