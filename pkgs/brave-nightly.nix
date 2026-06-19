{ callPackage, fetchurl }:
let
  version = "1.93.84";
  hash = "198gsbqdjbm0lrgr9175kl9a01kq0cwmc78bwnbcwnrrw8zprnxr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.93.84/brave-origin-nightly_1.93.84_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}