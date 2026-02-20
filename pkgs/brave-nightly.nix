{ callPackage, fetchurl }:
let
  version = "1.89.58";
  hash = "1a0dwif8jy40ravg8j5aaw6lbpxqrl8m82v26lizxv7fv3ns8524";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}