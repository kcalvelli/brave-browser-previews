{ callPackage, fetchurl }:
let
  version = "1.88.101";
  hash = "0m56kmcg3g9s4nqx1vdlc4dlw40lr59yy6jyn7zvbsb087bpgzp9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}