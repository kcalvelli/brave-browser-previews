{ callPackage, fetchurl }:
let
  version = "1.96.52";
  hash = "0krxgr4srx6n1mrf240vr2ls0fjw4j2g257jqd568xqmdbn1zz3l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.96.52/brave-browser-beta_1.96.52_amd64.deb";
}