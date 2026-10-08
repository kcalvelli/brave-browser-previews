{ callPackage, fetchurl }:
let
  version = "1.99.24";
  hash = "1zw08cm4zzw8iygffp5k4s323nwcsx3qk1im6q9b0i1qa59zifsv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.99.24/brave-browser-nightly_1.99.24_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}