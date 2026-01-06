{ callPackage, fetchurl }:
let
  version = "1.86.130";
  hash = "0c0w13z7g4qilkazc6vgd04bprnb34ar5mni6lkv15fh7c368m3v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}