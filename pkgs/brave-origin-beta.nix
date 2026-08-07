{ callPackage, fetchurl }:
let
  version = "1.94.104";
  hash = "15y5f849q7fhj4dgki22hxqfg4rlipd6w9ls8qglbznwrcbzdclw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.94.104_amd64.deb";
}
