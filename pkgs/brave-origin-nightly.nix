{ callPackage, fetchurl }:
let
  version = "1.93.14";
  hash = "08s1pp7j2jzwv34nmpzxiiv7wzx14kcrvrv7vpmmpwmk1s97d8q8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.14_amd64.deb";
}
