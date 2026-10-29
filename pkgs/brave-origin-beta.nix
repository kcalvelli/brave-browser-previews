{ callPackage, fetchurl }:
let
  version = "1.100.44";
  hash = "1ik005j2zbvgdg93nadjgkrqc4jb498sd91mb6i0hlb570mgnrgf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.100.44_amd64.deb";
}
