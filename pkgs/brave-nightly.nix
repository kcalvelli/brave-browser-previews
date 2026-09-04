{ callPackage, fetchurl }:
let
  version = "1.97.2";
  hash = "1c06xjfy1ia0s5bqgs990r246qj6c05mb45s4lqhlpw5fa7ym8w4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.97.2/brave-browser-nightly_1.97.2_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}