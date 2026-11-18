{ callPackage, fetchurl }:
let
  version = "1.102.17";
  hash = "1xzn0s3800979awnjj2nhwznizfz77y6phn4fdwc3h2swd1pkm8r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.17/brave-browser-nightly_1.102.17_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}