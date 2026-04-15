{ callPackage, fetchurl }:
let
  version = "1.91.51";
  hash = "0y8rr7jkr1qza2wmhylp564lwrkr4xligih5jzsyprszhvkagl6a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}