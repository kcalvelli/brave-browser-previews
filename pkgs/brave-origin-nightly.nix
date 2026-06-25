{ callPackage, fetchurl }:
let
  version = "1.93.101";
  hash = "0bygh2flk06i3fcaci9hdq03kjasbqq9bhgjrqnn8darz1rsqj77";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.101_amd64.deb";
}
