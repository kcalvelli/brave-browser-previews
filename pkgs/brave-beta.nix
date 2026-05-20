{ callPackage, fetchurl }:
let
  version = "1.91.156";
  hash = "0dl9rz89plcwy1waip9xk7gqakvsvywz9cj40ajiwn4cgc1778s7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.91.156/brave-browser-beta_1.91.156_amd64.deb";
}