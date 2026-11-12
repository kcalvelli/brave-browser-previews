{ callPackage, fetchurl }:
let
  version = "1.102.1";
  hash = "0p4af13nwn2ni2kqydfbb7ccvhazxkb3xhllbziz5plddkxdh611";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.1/brave-origin-nightly_1.102.1_amd64.deb";
}
