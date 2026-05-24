{ callPackage, fetchurl }:
let
  version = "1.92.92";
  hash = "19fc0b7gsg17b43817ssi4qbyjcs9xfcwjmkbgv9xsl4z2ixgjn4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.92/brave-browser-nightly_1.92.92_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}