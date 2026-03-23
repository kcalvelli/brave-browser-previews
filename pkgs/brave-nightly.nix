{ callPackage, fetchurl }:
let
  version = "1.90.55";
  hash = "0hsw85lwz4g0w0q53q928ybb10l0jp3sd7g6gxaxzixqkv6l0iqp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}