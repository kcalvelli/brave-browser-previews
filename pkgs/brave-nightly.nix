{ callPackage, fetchurl }:
let
  version = "1.93.79";
  hash = "1j89byvagjxh0xxb4lkw58yn6j9mschnasjbdbc1mnf5y3nj7p9c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.79/brave-origin-nightly_1.93.79_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}