{ callPackage, fetchurl }:
let
  version = "1.91.20";
  hash = "12x3ljy8bn4bv13jmw7cjsspyi6lw5r14nccwkcd99dxg0gw6nr2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}