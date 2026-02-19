{ callPackage, fetchurl }:
let
  version = "1.89.52";
  hash = "0lm50hn0bylmljhajw5xrgagd2g7jnhji062025a7phy3jfx5pb8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}