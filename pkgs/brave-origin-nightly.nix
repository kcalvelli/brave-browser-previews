{ callPackage, fetchurl }:
let
  version = "1.99.20";
  hash = "0x7ga6q9kh299r8qxswjsy5zidr84q50dy24pqq5yfwiy0bzm8gc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.99.20_amd64.deb";
}
