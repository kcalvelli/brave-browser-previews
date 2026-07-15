{ callPackage, fetchurl }:
let
  version = "1.93.118";
  hash = "0qzl1ayjsvpg0ls1kgpiqgfjksx8rr2n9x7zssai0f16kkzszfd5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.93.118_amd64.deb";
}
