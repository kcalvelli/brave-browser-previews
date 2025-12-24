{ callPackage, fetchurl }:
let
  version = "1.87.110";
  hash = "0jkqa5sn5bji5kca40wqs9zpv6irdwxzf98w1809jgczdqxxwgv5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}