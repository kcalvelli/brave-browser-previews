{ callPackage, fetchurl }:
let
  version = "1.88.105";
  hash = "0170zk83qdv2aym7gmzr9n8j8njxim7vw5d19bdgcgl82p7xihfd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}