{ callPackage, fetchurl }:
let
  version = "1.94.15";
  hash = "1nv6db7w1p4yhblw5ynic4bhmwx2r20jv88yv6ipnc8sxm8fsz7w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.15/brave-origin-nightly_1.94.15_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}