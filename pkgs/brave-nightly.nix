{ callPackage, fetchurl }:
let
  version = "1.95.57";
  hash = "1pb0cwd746rxs6cp99602pv26z7hgh32abpn05ia3xiid6g3y3dk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.95.57/brave-browser-nightly_1.95.57_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}