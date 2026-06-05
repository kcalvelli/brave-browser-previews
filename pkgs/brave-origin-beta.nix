{ callPackage, fetchurl }:
let
  version = "1.92.114";
  hash = "1axvy1fqg9w9xfizylymc7jswms00y91vs802ky7lax95mqq5scr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://brave-browser-apt-beta.s3.brave.com/pool/main/b/brave-origin-beta/brave-origin-beta_1.92.114_amd64.deb";
}
