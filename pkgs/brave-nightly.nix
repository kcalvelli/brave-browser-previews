{ callPackage, fetchurl }:
let
  version = "1.88.35";
  hash = "1w28l56h2vsyks2qimfvpf4zmw9adg58b9zn6rd5snwh2xb4jzi1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}