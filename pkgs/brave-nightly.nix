{ callPackage, fetchurl }:
let
  version = "1.93.37";
  hash = "0lq4ddn03xndlih7p8qi3qzxq0ps263s74dvgx205aamg3q7n8r3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.37/brave-browser-nightly_1.93.37_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}