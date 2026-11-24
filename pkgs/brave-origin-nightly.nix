{ callPackage, fetchurl }:
let
  version = "1.102.34";
  hash = "1qmkwy96fiwaiiyj3rjns4w1ihycrsb407f889v4xkarjvxfh4mf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.102.34/brave-origin-nightly_1.102.34_amd64.deb";
}
