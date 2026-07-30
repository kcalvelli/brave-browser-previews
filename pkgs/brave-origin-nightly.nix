{ callPackage, fetchurl }:
let
  version = "1.95.18";
  hash = "196vja61761rm5qz0i2aagqh3fgna7n7rcihyy20s4v2hcig4gla";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.95.18_amd64.deb";
}
