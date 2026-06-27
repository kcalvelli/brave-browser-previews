{ callPackage, fetchurl }:
let
  version = "1.94.10";
  hash = "1lpldd7mh3asndf8cp73459xs5ffkmca4v1lgqpf3zk1v97j9nyj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.10_amd64.deb";
}
