{ callPackage, fetchurl }:
let
  version = "1.87.182";
  hash = "0sq33lq1hlrzxsc7vznc7iwypjrg8zzv8r60hvz85pgj3cm5ci6d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}