{ callPackage, fetchurl }:
let
  version = "1.93.56";
  hash = "0q802vnmy9cx9a3syxss0k0h9smg5kadljkkr71isc08pvnlg9ay";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.93.56_amd64.deb";
}
