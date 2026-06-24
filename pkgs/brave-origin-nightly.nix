{ callPackage, fetchurl }:
let
  version = "1.93.96";
  hash = "18p1ngl00s145g8p0mprd39iqfv96sgbqbkkf95pwxxanmr23wgb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.96_amd64.deb";
}
