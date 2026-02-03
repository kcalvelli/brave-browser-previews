{ callPackage, fetchurl }:
let
  version = "1.87.180";
  hash = "02pzxcr06xg4smakskpfylakmqxlya4p8bw270sh9vgn178warpm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}