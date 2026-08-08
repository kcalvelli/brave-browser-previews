{ callPackage, fetchurl }:
let
  version = "1.95.52";
  hash = "1wp455n6lh3m8aicz1xhwa14xgz3pzr0dk1dd957mp6fd5085v4f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.52/brave-browser-nightly_1.95.52_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}