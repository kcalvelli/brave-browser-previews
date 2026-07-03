{ callPackage, fetchurl }:
let
  version = "1.93.111";
  hash = "0dbay066w18av7kakpzcmy33v453yz5xa0wwjdzbkswxqkhy7dap";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.111/brave-browser-beta_1.93.111_amd64.deb";
}