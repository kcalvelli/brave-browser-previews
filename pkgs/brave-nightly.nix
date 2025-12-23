{ callPackage, fetchurl }:
let
  version = "1.87.106";
  hash = "1q7ykmk2a1ywqwxdnk7zk0x49x7vkmmiljv1b98a7dv2galkv289";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}