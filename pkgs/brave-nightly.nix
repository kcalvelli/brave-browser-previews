{ callPackage, fetchurl }:
let
  version = "1.90.34";
  hash = "04wbyi7scavdqc0gqzc2jb0lmq0agx59bh0f1pjq836fzsjghhgn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}