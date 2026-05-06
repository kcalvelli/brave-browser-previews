{ callPackage, fetchurl }:
let
  version = "1.92.27";
  hash = "1wal0hx0czcmzix2zx835lk6l7fgi11f4ifannbwhan6z8rwavpa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.27/brave-browser-nightly_1.92.27_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}