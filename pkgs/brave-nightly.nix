{ callPackage, fetchurl }:
let
  version = "1.94.59";
  hash = "049jhx611b62pgm0955sr1kpln9isllm4r77rqd7f0k9fdj5q0c4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v1.94.59/brave-browser-nightly_1.94.59_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}