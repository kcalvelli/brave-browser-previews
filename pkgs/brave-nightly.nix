{ callPackage, fetchurl }:
let
  version = "1.95.83";
  hash = "10gx8ilp5sq5wq57ml5ddihmvwhmw736y5nf9x2kxy03nlzwxshl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.83/brave-browser-nightly_1.95.83_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}