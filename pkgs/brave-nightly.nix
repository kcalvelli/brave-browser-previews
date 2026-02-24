{ callPackage, fetchurl }:
let
  version = "1.89.66";
  hash = "102n83g0vvgmwcvfwn615smiq5mixvj2xq4h91a3ghjg1hqqxf9v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}