{ callPackage, fetchurl }:
let
  version = "1.94.104";
  hash = "15y5f849q7fhj4dgki22hxqfg4rlipd6w9ls8qglbznwrcbzdclw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.104/brave-origin-beta_1.94.104_amd64.deb";
}