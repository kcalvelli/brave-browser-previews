{ callPackage, fetchurl }:
let
  version = "1.94.75";
  hash = "196yi55356sb6dsl375p8f4v8jwyjflav0j8hw82f2h4490rpg9z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.75_amd64.deb";
}
