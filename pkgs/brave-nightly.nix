{ callPackage, fetchurl }:
let
  version = "1.92.103";
  hash = "0z50fl9173s3nsfjnf60cm05x94jzqv1szxidc4xfq0qgspdrwj7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.92.103/brave-browser-nightly_1.92.103_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}