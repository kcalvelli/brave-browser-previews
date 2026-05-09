{ callPackage, fetchurl }:
let
  version = "1.92.39";
  hash = "1xymna4wjbrsglyfhqp3wk4iy5sjl2wp2vcjy5ld2d54i4ihgz5h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.92.39_amd64.deb";
}
