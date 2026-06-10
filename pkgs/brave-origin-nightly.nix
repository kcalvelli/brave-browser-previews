{ callPackage, fetchurl }:
let
  version = "1.93.45";
  hash = "0jhp3zpfr63r308ghcj8mlcw8602pbl3m4dv1k8n3wyypcwngc0r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.45_amd64.deb";
}
