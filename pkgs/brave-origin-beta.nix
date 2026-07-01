{ callPackage, fetchurl }:
let
  version = "1.93.108";
  hash = "1y1b2fxj22db7ffsnh458faz3v9nrljqc6sakqyl2jh2wm1xsqd8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.93.108_amd64.deb";
}
