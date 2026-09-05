{ callPackage, fetchurl }:
let
  version = "1.97.8";
  hash = "0bjgzmrbxyg2yp012gi0v09ic65ji0brw0ggqc7gdafyv1wx6a14";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.8/brave-browser-nightly_1.97.8_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}