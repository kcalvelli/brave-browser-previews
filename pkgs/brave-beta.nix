{ callPackage, fetchurl }:
let
  version = "1.101.57";
  hash = "05w5k7p4swjzf01rrj453j6739h4p87wdcq9za4wk41hx7j2qna8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.101.57/brave-browser-beta_1.101.57_amd64.deb";
}