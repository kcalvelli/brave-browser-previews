{ callPackage, fetchurl }:
let
  version = "1.100.49";
  hash = "13gi8g7fryd40mf762irynmk7jiff2cpfvmx8kbzizgq6l5045kz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.100.49_amd64.deb";
}
