{ callPackage, fetchurl }:
let
  version = "1.96.10";
  hash = "1kf2kwh0f3jk0jj5jikrzir34lcb6dqiym4mh6ak28hdki3507g1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.96.10_amd64.deb";
}
