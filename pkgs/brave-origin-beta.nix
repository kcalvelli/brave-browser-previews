{ callPackage, fetchurl }:
let
  version = "1.94.109";
  hash = "06f0nnyrlyjp4xb48kmma46vywwn87ib8gwwav32l15iwxn1qjav";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.94.109_amd64.deb";
}
