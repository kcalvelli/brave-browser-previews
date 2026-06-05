{ callPackage, fetchurl }:
let
  version = "1.93.30";
  hash = "0ysfrfjrqkzixzcjv5wasfgfrm8d4pwwfwxlkisc7v3mwlyf6kx0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.30_amd64.deb";
}
