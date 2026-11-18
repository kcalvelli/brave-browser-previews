{ callPackage, fetchurl }:
let
  version = "1.101.51";
  hash = "1c2k7h27q6nzna5jfndl58zd9gwx1ks8r2gnhvkdvl44rc2x0i0n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.51/brave-origin-beta_1.101.51_amd64.deb";
}
