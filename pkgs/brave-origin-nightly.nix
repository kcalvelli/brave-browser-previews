{ callPackage, fetchurl }:
let
  version = "1.95.14";
  hash = "0l6nsj4mqym04dxs2yngvjxrbk6facw89kgb2zp23fpn8bk4z3rw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.14_amd64.deb";
}
