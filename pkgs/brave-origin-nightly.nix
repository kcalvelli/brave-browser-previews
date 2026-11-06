{ callPackage, fetchurl }:
let
  version = "1.101.27";
  hash = "0yry2dpjk1fvxzjb5kivsw69d86kym5f7p3gvq0l57czyprd4sn6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.101.27_amd64.deb";
}
