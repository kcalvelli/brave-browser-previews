{ callPackage, fetchurl }:
let
  version = "1.89.61";
  hash = "016rl75jk9y1pk16682d8rpds712jw8x6dg6yzm27k0n7g56s1nm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}