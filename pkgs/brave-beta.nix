{ callPackage, fetchurl }:
let
  version = "1.94.101";
  hash = "1kw4xsml1y1s5m8mhq7qmk76hnympl53fqryfzm5gwqz7z5in6pm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.101/brave-origin-beta_1.94.101_amd64.deb";
}