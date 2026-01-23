{ callPackage, fetchurl }:
let
  version = "1.87.173";
  hash = "07dgsivbnk2y5ilga00ljw5w2cjdp184j6dx8p2sl6n3dpmksisv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}