{ callPackage, fetchurl }:
let
  version = "1.87.153";
  hash = "1nnd3i0dv2d41fbrv5n20k976501hyhpk1q4fhs3vzj7q6zqs2qk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}