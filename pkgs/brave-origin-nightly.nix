{ callPackage, fetchurl }:
let
  version = "1.94.91";
  hash = "1yh4qjvl4wcjanw20rg4jg9f2vbnx9na81mkw6n4yw7l92y7kxj1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.91_amd64.deb";
}
