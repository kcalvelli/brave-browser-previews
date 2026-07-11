{ callPackage, fetchurl }:
let
  version = "1.94.57";
  hash = "0v6hg330z0njnzrhlf1rm7h6xlhhhp5d18r7159rlkj17afb9shc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://brave-browser-apt-nightly.s3.brave.com/pool/main/b/brave-origin-nightly/brave-origin-nightly_1.94.57_amd64.deb";
}
