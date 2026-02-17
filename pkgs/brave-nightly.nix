{ callPackage, fetchurl }:
let
  version = "1.89.44";
  hash = "07z0bq2d4wwjwx51n5gvzbzgkk2028cc0ss4x42l6c34pysrq669";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}